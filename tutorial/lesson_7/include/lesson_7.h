#ifndef __LESSON_7_H__
#define __LESSON_7_H__

#include <cuda.h>
#include <cuda_runtime.h>
#include <pcl/point_types.h>
#include "point_types.h"


struct hashElement{
	int index_of_point;
	int index_of_bucket;
};

struct bucket{
	int index_begin;
	int index_end;
	int number_of_points;
};

struct gridParameters{
	float bounding_box_min_X;
	float bounding_box_min_Y;
	float bounding_box_min_Z;
	float bounding_box_max_X;
	float bounding_box_max_Y;
	float bounding_box_max_Z;
	int number_of_buckets_X;
	int number_of_buckets_Y;
	int number_of_buckets_Z;
	long long int number_of_buckets;
	float resolution_X;
	float resolution_Y;
	float resolution_Z;
};

struct simple_point3D{
	float x;
	float y;
	float z;
};

cudaError_t cudaWarmUpGPU();

cudaError_t cudaCalculateGridParams(VelodyneVLP16::PointXYZNL* d_point_cloud, int number_of_points,
	float resolution_X, float resolution_Y, float resolution_Z, gridParameters &out_rgd_params);

cudaError_t cudaCalculateGrid(int threads, VelodyneVLP16::PointXYZNL* d_point_cloud, bucket *d_buckets,
		hashElement *d_hashTable, int number_of_points, gridParameters rgd_params);

cudaError_t cudaSemanticLabelingPlaneEdges(
		int threads,
		VelodyneVLP16::PointXYZNL * d_point_cloud,
		int number_of_points,
		hashElement* d_hashTable,
		bucket* d_buckets,
		simple_point3D* d_mean,
		gridParameters rgd_params,
		float search_radius,
		int max_number_considered_in_INNER_bucket,
		int max_number_considered_in_OUTER_bucket,
		float curvature_threshold,
		int number_of_points_needed_for_plane_threshold);

cudaError_t cudaSemanticLabelingFloorCeiling(
		int threads,
		VelodyneVLP16::PointXYZNL * d_point_cloud,
		int number_of_points,
		float ground_Z_coordinate_threshold);

#endif
