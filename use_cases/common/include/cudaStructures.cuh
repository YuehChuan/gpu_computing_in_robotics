/*
 * Software License Agreement (BSD License)
 *
 *  Data Registration Framework - Mobile Spatial Assistance System
 *  Copyright (c) 2014-2016, Institute of Mathematical Machines
 *  http://lider.zms.imm.org.pl/
 *
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Institute of Mathematical Machines nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * $Id$
 */

#ifndef __CUDA_STRUCTURES_CUH__
#define __CUDA_STRUCTURES_CUH__

#include "cudaStructures.h"

struct cuda_compareHashElements
{
	__host__ __device__
		bool operator()(hashElement l, hashElement r)
	{
		return l.index_of_bucket < r.index_of_bucket;
	}
};

struct cuda_compareX
{
	__host__ __device__
		bool operator()(pcl::PointXYZ lp, pcl::PointXYZ rp)
	{
		return lp.x < rp.x;
	}
};

struct cuda_compareY
{
	__host__ __device__
		bool operator()(pcl::PointXYZ lp, pcl::PointXYZ rp)
	{
		return lp.y < rp.y;
	}
};

struct cuda_compareZ
{
	__host__ __device__
		bool operator()(pcl::PointXYZ lp, pcl::PointXYZ rp)
	{
		return lp.z < rp.z;
	}
};

struct cuda_compareX_Semantic_PointXYZNL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZNL lp, Semantic::PointXYZNL rp)
	{
		return lp.x < rp.x;
	}
};

struct cuda_compareY_Semantic_PointXYZNL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZNL lp, Semantic::PointXYZNL rp)
	{
		return lp.y < rp.y;
	}
};

struct cuda_compareZ_Semantic_PointXYZNL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZNL lp, Semantic::PointXYZNL rp)
	{
		return lp.z < rp.z;
	}
};

struct cuda_compareX_Semantic_PointXYZL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZL lp, Semantic::PointXYZL rp)
	{
		return lp.x < rp.x;
	}
};

struct cuda_compareY_Semantic_PointXYZL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZL lp, Semantic::PointXYZL rp)
	{
		return lp.y < rp.y;
	}
};

struct cuda_compareZ_Semantic_PointXYZL
{
	__host__ __device__
		bool operator()(Semantic::PointXYZL lp, Semantic::PointXYZL rp)
	{
		return lp.z < rp.z;
	}
};

struct cuda_compareX_velodyne_pointcloud_PointXYZIR
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIR lp, velodyne_pointcloud::PointXYZIR rp)
	{
		return lp.x < rp.x;
	}
};

struct cuda_compareY_velodyne_pointcloud_PointXYZIR
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIR lp, velodyne_pointcloud::PointXYZIR rp)
	{
		return lp.y < rp.y;
	}
};

struct cuda_compareZ_velodyne_pointcloud_PointXYZIR
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIR lp, velodyne_pointcloud::PointXYZIR rp)
	{
		return lp.z < rp.z;
	}
};

struct cuda_compareX_velodyne_pointcloud_PointXYZIRNL
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIRNL lp, velodyne_pointcloud::PointXYZIRNL rp)
	{
		return lp.x < rp.x;
	}
};

struct cuda_compareY_velodyne_pointcloud_PointXYZIRNL
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIRNL lp, velodyne_pointcloud::PointXYZIRNL rp)
	{
		return lp.y < rp.y;
	}
};

struct cuda_compareZ_velodyne_pointcloud_PointXYZIRNL
{
	__host__ __device__
		bool operator()(velodyne_pointcloud::PointXYZIRNL lp, velodyne_pointcloud::PointXYZIRNL rp)
	{
		return lp.z < rp.z;
	}
};
#endif
