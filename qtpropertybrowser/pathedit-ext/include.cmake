function(bundle_pathedit_ext target ext_pwd)
    target_sources(${target}
        PUBLIC
        ${ext_pwd}/fileedit.cpp
        ${ext_pwd}/filepathmanager.cpp
        ${ext_pwd}/fileeditfactory.cpp
        ${ext_pwd}/variantmanager.cpp
        ${ext_pwd}/variantfactory.cpp
        ${ext_pwd}/fileedit.h
        ${ext_pwd}/filepathmanager.h
        ${ext_pwd}/fileeditfactory.h
        ${ext_pwd}/variantmanager.h
        ${ext_pwd}/variantfactory.h
    )
    target_include_directories(${target} PUBLIC ${ext_pwd})
endfunction(bundle_pathedit_ext)
