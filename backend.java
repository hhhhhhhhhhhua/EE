package com.yupi.springbootinit.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yupi.springbootinit.model.entity.CalculatorRes;


@author 
@description 
@createDate 

public interface CalculatorResService extends IService<CalculatorRes> {

}


    @PostMapping("/add")
    public BaseResponse<Long> addCalculatorRes(@RequestBody CalculatorRes calculatorResAddRequest, HttpServletRequest request) {
        if (calculatorResAddRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        CalculatorRes calculatorRes = new CalculatorRes();
        BeanUtils.copyProperties(calculatorResAddRequest, calculatorRes);
        boolean result = calculatorResService.save(calculatorRes);
        ThrowUtils.throwIf(!result, ErrorCode.OPERATION_ERROR);
        long newCalculatorResId = calculatorRes.getId();
        return ResultUtils.success(newCalculatorResId);
    }

     @param id
     @return
     
    @GetMapping("/get/vo")
    public BaseResponse<CalculatorRes> getCalculatorResVOById(long id, HttpServletRequest request) {
        if (id <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        CalculatorRes calculatorRes = calculatorResService.getById(id);
        if (calculatorRes == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR);
        }
        return ResultUtils.success(calculatorRes);
    }



    @param calculatorResQueryRequest
    @param request
    @return
    @PostMapping("/list/vo")
    public BaseResponse<List<CalculatorRes>> listCalculatorResVOByPage(@RequestBody CalculatorRes calculatorResQueryRequest,
            HttpServletRequest request) {
        List<CalculatorRes> calculatorResList = calculatorResService.list();
        return ResultUtils.success(calculatorResList);
    }