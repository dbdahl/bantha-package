use roxido::*;

#[no_mangle]
extern "C" fn R_init_bantha_rust(info: *mut rbindings::DllInfo) {
    let mut call_routines = Vec::with_capacity(8);
    let mut _names: Vec<std::ffi::CString> = Vec::with_capacity(8);
    _names.push(std::ffi::CString::new(".bantha").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::bantha as *const u8) },
        numArgs: 4,
    });
    _names.push(std::ffi::CString::new(".bantha_big_data").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::bantha_big_data as *const u8) },
        numArgs: 2,
    });
    _names.push(std::ffi::CString::new(".compute_expected_gsh_loss").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::compute_expected_gsh_loss as *const u8) },
        numArgs: 2,
    });
    _names.push(std::ffi::CString::new(".gsh_loss_builder_new").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::gsh_loss_builder_new as *const u8) },
        numArgs: 4,
    });
    _names.push(std::ffi::CString::new(".gsh_loss_builder_process").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::gsh_loss_builder_process as *const u8) },
        numArgs: 2,
    });
    _names.push(std::ffi::CString::new(".gsh_loss_builder_sample").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::gsh_loss_builder_sample as *const u8) },
        numArgs: 4,
    });
    _names.push(std::ffi::CString::new(".initialized_expected_gsh_loss").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::initialized_expected_gsh_loss as *const u8) },
        numArgs: 2,
    });
    _names.push(std::ffi::CString::new(".is_dag").unwrap());
    call_routines.push(rbindings::R_CallMethodDef {
        name: _names.last().unwrap().as_ptr(),
        fun: unsafe { std::mem::transmute(crate::is_dag as *const u8) },
        numArgs: 1,
    });
    call_routines.push(rbindings::R_CallMethodDef {
        name: std::ptr::null(),
        fun: None,
        numArgs: 0,
    });
    unsafe {
        rbindings::R_registerRoutines(
            info,
            std::ptr::null(),
            call_routines.as_ptr(),
            std::ptr::null(),
            std::ptr::null(),
        );
        rbindings::R_useDynamicSymbols(info, 0);
        rbindings::R_forceSymbols(info, 1);
    }
    roxido::__private_set_custom_panic_hook();
}