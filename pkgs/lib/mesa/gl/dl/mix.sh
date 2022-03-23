{% extends '//mix/dlstubs.sh' %}

{% block lib_deps %}
lib/mesa/glesv2
{% endblock %}

{% block export_symbols %}
glActiveShaderProgram
glActiveTexture
glAttachShader
glBeginQuery
glBeginTransformFeedback
glBindAttribLocation
glBindBuffer
glBindBufferBase
glBindBufferRange
glBindFramebuffer
glBindImageTexture
glBindProgramPipeline
glBindRenderbuffer
glBindSampler
glBindTexture
glBindTransformFeedback
glBindVertexArray
glBindVertexBuffer
glBlendBarrier
glBlendColor
glBlendEquation
glBlendEquationSeparate
glBlendEquationSeparatei
glBlendEquationi
glBlendFunc
glBlendFuncSeparate
glBlendFuncSeparatei
glBlendFunci
glBlitFramebuffer
glBufferData
glBufferSubData
glCheckFramebufferStatus
glClear
glClearBufferfi
glClearBufferfv
glClearBufferiv
glClearBufferuiv
glClearColor
glClearDepthf
glClearStencil
glClientWaitSync
glColorMask
glColorMaski
glCompileShader
glCompressedTexImage2D
glCompressedTexImage3D
glCompressedTexSubImage2D
glCompressedTexSubImage3D
glCopyBufferSubData
glCopyImageSubData
glCopyTexImage2D
glCopyTexSubImage2D
glCopyTexSubImage3D
glCreateProgram
glCreateShader
glCreateShaderProgramv
glCullFace
glDebugMessageCallback
glDebugMessageControl
glDebugMessageInsert
glDeleteBuffers
glDeleteFramebuffers
glDeleteProgram
glDeleteProgramPipelines
glDeleteQueries
glDeleteRenderbuffers
glDeleteSamplers
glDeleteShader
glDeleteSync
glDeleteTextures
glDeleteTransformFeedbacks
glDeleteVertexArrays
glDepthFunc
glDepthMask
glDepthRangef
glDetachShader
glDisable
glDisableVertexAttribArray
glDisablei
glDispatchCompute
glDispatchComputeIndirect
glDrawArrays
glDrawArraysIndirect
glDrawArraysInstanced
glDrawBuffers
glDrawElements
glDrawElementsBaseVertex
glDrawElementsIndirect
glDrawElementsInstanced
glDrawElementsInstancedBaseVertex
glDrawRangeElements
glDrawRangeElementsBaseVertex
glEnable
glEnableVertexAttribArray
glEnablei
glEndQuery
glEndTransformFeedback
glFenceSync
glFinish
glFlush
glFlushMappedBufferRange
glFramebufferParameteri
glFramebufferRenderbuffer
glFramebufferTexture
glFramebufferTexture2D
glFramebufferTextureLayer
glFrontFace
glGenBuffers
glGenFramebuffers
glGenProgramPipelines
glGenQueries
glGenRenderbuffers
glGenSamplers
glGenTextures
glGenTransformFeedbacks
glGenVertexArrays
glGenerateMipmap
glGetActiveAttrib
glGetActiveUniform
glGetActiveUniformBlockName
glGetActiveUniformBlockiv
glGetActiveUniformsiv
glGetAttachedShaders
glGetAttribLocation
glGetBooleani_v
glGetBooleanv
glGetBufferParameteri64v
glGetBufferParameteriv
glGetBufferPointerv
glGetDebugMessageLog
glGetError
glGetFloatv
glGetFragDataLocation
glGetFramebufferAttachmentParameteriv
glGetFramebufferParameteriv
glGetGraphicsResetStatus
glGetInteger64i_v
glGetInteger64v
glGetIntegeri_v
glGetIntegerv
glGetInternalformativ
glGetMultisamplefv
glGetObjectLabel
glGetObjectPtrLabel
glGetPointerv
glGetProgramBinary
glGetProgramInfoLog
glGetProgramInterfaceiv
glGetProgramPipelineInfoLog
glGetProgramPipelineiv
glGetProgramResourceIndex
glGetProgramResourceLocation
glGetProgramResourceName
glGetProgramResourceiv
glGetProgramiv
glGetQueryObjectuiv
glGetQueryiv
glGetRenderbufferParameteriv
glGetSamplerParameterIiv
glGetSamplerParameterIuiv
glGetSamplerParameterfv
glGetSamplerParameteriv
glGetShaderInfoLog
glGetShaderPrecisionFormat
glGetShaderSource
glGetShaderiv
glGetString
glGetStringi
glGetSynciv
glGetTexLevelParameterfv
glGetTexLevelParameteriv
glGetTexParameterIiv
glGetTexParameterIuiv
glGetTexParameterfv
glGetTexParameteriv
glGetTransformFeedbackVarying
glGetUniformBlockIndex
glGetUniformIndices
glGetUniformLocation
glGetUniformfv
glGetUniformiv
glGetUniformuiv
glGetVertexAttribIiv
glGetVertexAttribIuiv
glGetVertexAttribPointerv
glGetVertexAttribfv
glGetVertexAttribiv
glGetnUniformfv
glGetnUniformiv
glGetnUniformuiv
glHint
glInvalidateFramebuffer
glInvalidateSubFramebuffer
glIsBuffer
glIsEnabled
glIsEnabledi
glIsFramebuffer
glIsProgram
glIsProgramPipeline
glIsQuery
glIsRenderbuffer
glIsSampler
glIsShader
glIsSync
glIsTexture
glIsTransformFeedback
glIsVertexArray
glLineWidth
glLinkProgram
glMapBufferRange
glMemoryBarrier
glMemoryBarrierByRegion
glMinSampleShading
glObjectLabel
glObjectPtrLabel
glPatchParameteri
glPauseTransformFeedback
glPixelStorei
glPolygonOffset
glPopDebugGroup
glPrimitiveBoundingBox
glProgramBinary
glProgramParameteri
glProgramUniform1f
glProgramUniform1fv
glProgramUniform1i
glProgramUniform1iv
glProgramUniform1ui
glProgramUniform1uiv
glProgramUniform2f
glProgramUniform2fv
glProgramUniform2i
glProgramUniform2iv
glProgramUniform2ui
glProgramUniform2uiv
glProgramUniform3f
glProgramUniform3fv
glProgramUniform3i
glProgramUniform3iv
glProgramUniform3ui
glProgramUniform3uiv
glProgramUniform4f
glProgramUniform4fv
glProgramUniform4i
glProgramUniform4iv
glProgramUniform4ui
glProgramUniform4uiv
glProgramUniformMatrix2fv
glProgramUniformMatrix2x3fv
glProgramUniformMatrix2x4fv
glProgramUniformMatrix3fv
glProgramUniformMatrix3x2fv
glProgramUniformMatrix3x4fv
glProgramUniformMatrix4fv
glProgramUniformMatrix4x2fv
glProgramUniformMatrix4x3fv
glPushDebugGroup
glReadBuffer
glReadPixels
glReadnPixels
glReleaseShaderCompiler
glRenderbufferStorage
glRenderbufferStorageMultisample
glResumeTransformFeedback
glSampleCoverage
glSampleMaski
glSamplerParameterIiv
glSamplerParameterIuiv
glSamplerParameterf
glSamplerParameterfv
glSamplerParameteri
glSamplerParameteriv
glScissor
glShaderBinary
glShaderSource
glStencilFunc
glStencilFuncSeparate
glStencilMask
glStencilMaskSeparate
glStencilOp
glStencilOpSeparate
glTexBuffer
glTexBufferRange
glTexImage2D
glTexImage3D
glTexParameterIiv
glTexParameterIuiv
glTexParameterf
glTexParameterfv
glTexParameteri
glTexParameteriv
glTexStorage2D
glTexStorage2DMultisample
glTexStorage3D
glTexStorage3DMultisample
glTexSubImage2D
glTexSubImage3D
glTransformFeedbackVaryings
glUniform1f
glUniform1fv
glUniform1i
glUniform1iv
glUniform1ui
glUniform1uiv
glUniform2f
glUniform2fv
glUniform2i
glUniform2iv
glUniform2ui
glUniform2uiv
glUniform3f
glUniform3fv
glUniform3i
glUniform3iv
glUniform3ui
glUniform3uiv
glUniform4f
glUniform4fv
glUniform4i
glUniform4iv
glUniform4ui
glUniform4uiv
glUniformBlockBinding
glUniformMatrix2fv
glUniformMatrix2x3fv
glUniformMatrix2x4fv
glUniformMatrix3fv
glUniformMatrix3x2fv
glUniformMatrix3x4fv
glUniformMatrix4fv
glUniformMatrix4x2fv
glUniformMatrix4x3fv
glUnmapBuffer
glUseProgram
glUseProgramStages
glValidateProgram
glValidateProgramPipeline
glVertexAttrib1f
glVertexAttrib1fv
glVertexAttrib2f
glVertexAttrib2fv
glVertexAttrib3f
glVertexAttrib3fv
glVertexAttrib4f
glVertexAttrib4fv
glVertexAttribBinding
glVertexAttribDivisor
glVertexAttribFormat
glVertexAttribI4i
glVertexAttribI4iv
glVertexAttribI4ui
glVertexAttribI4uiv
glVertexAttribIFormat
glVertexAttribIPointer
glVertexAttribPointer
glVertexBindingDivisor
glViewport
glWaitSync
{% endblock %}

{% block export_lib %}
GL
{% endblock %}
