<template>
  <div class="index">
    <div class="crumbs">
      <el-breadcrumb separator="/">
        <el-breadcrumb-item><i class="el-icon-date"></i> 任务大厅</el-breadcrumb-item>
        <el-breadcrumb-item>闲逛中</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <div>
      <el-form>
        <el-row :gutter="20">
          <el-col :span="5">
            <el-form-item label="任务名称" label-width="70px">
              <el-input placeholder="请输入任务名称"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="5">
            <el-form-item label="技术栈" label-width="55px">
                <el-select placeholder="请选择技术栈">
                <el-option label="Java" value="java"></el-option>
                <el-option label="JS" value="js"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="任务时间" label-width="70px">
              <el-date-picker
                type="daterange"
                value-format="timestamp"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="6" style="text-align:right">
            <el-button
              type="primary"
              icon="el-icon-search" class="button-green">搜索</el-button>
          </el-col>
        </el-row>
      </el-form>
    </div>
    <el-table
      show-header
      border
      style="width: 100%;
      text-align: center">
      <el-table-column prop="id" label="#" min-width="50">
        <template>
          <el-tag size="medium">1</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="" label="任务名称" min-width="120">
        <template >hehehe</template>
      </el-table-column>
      <el-table-column prop="" label="前继任务" min-width="100">
        <template>1</template>
      </el-table-column>
      <el-table-column prop="" label="所属项目" min-width="100">
        <template>1</template>
      </el-table-column>
      <el-table-column prop="" label="技术栈" min-width="120">
        <template>1</template>
      </el-table-column>
      <el-table-column prop="" label="截止时间" min-width="120">
        <template>1</template>
      </el-table-column>
      <el-table-column prop="" label="发布者" min-width="120">
        <template>1</template>
      </el-table-column>
      <el-table-column prop="" label="当前状态" min-width="80">
        <template>
          <el-tag size="medium" :type="success"></el-tag>
        </template>
      </el-table-column>
    </el-table>
    <div style="text-align: right; margin-top: 5px">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page.sync="currentPage"
        :page-size="pageSize"
        layout="total, prev, pager, next"
        :total="total">
      </el-pagination>
    </div>
  </div>
</template>

<style scoped>
.index {
  padding: 20px 5%;
}
</style>
