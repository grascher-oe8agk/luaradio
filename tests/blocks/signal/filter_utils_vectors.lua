local radio = require('radio')

local M = {}
M.firwin_lowpass = radio.Float32Type.vector_from_array({-0.00028372, -0.00029029, 0.00030119, 0.00031662, -0.00033678, -0.00036188, 0.00039212, 0.00042773, -0.00046892, -0.00051591, 0.00056894, 0.00062823, -0.00069404, -0.00076662, 0.00084622, 0.00093314, -0.00102764, -0.00113004, 0.00124066, 0.00135983, -0.00148792, -0.00162531, 0.00177242, 0.00192970, -0.00209763, -0.00227676, 0.00246765, 0.00267095, -0.00288736, -0.00311768, 0.00336277, 0.00362363, -0.00390134, -0.00419716, 0.00451250, 0.00484899, -0.00520847, -0.00559309, 0.00600531, 0.00644804, -0.00692467, -0.00743918, 0.00799635, 0.00860188, -0.00926263, -0.00998702, 0.01078536, 0.01167052, -0.01265868, -0.01377056, 0.01503300, 0.01648152, -0.01816398, -0.02014658, 0.02252340, 0.02543288, -0.02908737, -0.03382997, 0.04025342, 0.04947747, -0.06390175, -0.08976559, 0.14994681, 0.45034730, 0.45034730, 0.14994681, -0.08976559, -0.06390175, 0.04947747, 0.04025342, -0.03382997, -0.02908737, 0.02543288, 0.02252340, -0.02014658, -0.01816398, 0.01648152, 0.01503300, -0.01377056, -0.01265868, 0.01167052, 0.01078536, -0.00998702, -0.00926263, 0.00860188, 0.00799635, -0.00743918, -0.00692467, 0.00644804, 0.00600531, -0.00559309, -0.00520847, 0.00484899, 0.00451250, -0.00419716, -0.00390134, 0.00362363, 0.00336277, -0.00311768, -0.00288736, 0.00267095, 0.00246765, -0.00227676, -0.00209763, 0.00192970, 0.00177242, -0.00162531, -0.00148792, 0.00135983, 0.00124066, -0.00113004, -0.00102764, 0.00093314, 0.00084622, -0.00076662, -0.00069404, 0.00062823, 0.00056894, -0.00051591, -0.00046892, 0.00042773, 0.00039212, -0.00036188, -0.00033678, 0.00031662, 0.00030119, -0.00029029, -0.00028372})
M.firwin_highpass = radio.Float32Type.vector_from_array({-0.00000000, 0.00040716, -0.00000000, -0.00044361, -0.00000000, 0.00050618, 0.00000000, -0.00059715, -0.00000000, 0.00071888, -0.00000000, -0.00087386, 0.00000000, 0.00106473, 0.00000000, -0.00129429, -0.00000000, 0.00156564, -0.00000000, -0.00188216, -0.00000000, 0.00224766, 0.00000000, -0.00266651, -0.00000000, 0.00314378, -0.00000000, -0.00368550, -0.00000000, 0.00429892, 0.00000000, -0.00499296, -0.00000000, 0.00577880, -0.00000000, -0.00667063, -0.00000000, 0.00768693, 0.00000000, -0.00885212, -0.00000000, 0.01019929, -0.00000000, -0.01177435, -0.00000000, 0.01364282, -0.00000000, -0.01590150, -0.00000000, 0.01869934, -0.00000000, -0.02227765, -0.00000000, 0.02705416, -0.00000000, -0.03381911, -0.00000000, 0.04426758, -0.00000000, -0.06280917, -0.00000000, 0.10561675, -0.00000000, -0.31825924, 0.50019759, -0.31825924, -0.00000000, 0.10561675, -0.00000000, -0.06280917, -0.00000000, 0.04426758, -0.00000000, -0.03381911, -0.00000000, 0.02705416, -0.00000000, -0.02227765, -0.00000000, 0.01869934, -0.00000000, -0.01590150, -0.00000000, 0.01364282, -0.00000000, -0.01177435, -0.00000000, 0.01019929, -0.00000000, -0.00885212, 0.00000000, 0.00768693, -0.00000000, -0.00667063, -0.00000000, 0.00577880, -0.00000000, -0.00499296, 0.00000000, 0.00429892, -0.00000000, -0.00368550, -0.00000000, 0.00314378, -0.00000000, -0.00266651, 0.00000000, 0.00224766, -0.00000000, -0.00188216, -0.00000000, 0.00156564, -0.00000000, -0.00129429, 0.00000000, 0.00106473, 0.00000000, -0.00087386, -0.00000000, 0.00071888, -0.00000000, -0.00059715, 0.00000000, 0.00050618, -0.00000000, -0.00044361, -0.00000000, 0.00040716, -0.00000000})
M.firwin_bandpass = radio.Float32Type.vector_from_array({0.00075680, -0.00000000, -0.00049618, -0.00000000, -0.00000000, 0.00000000, 0.00064390, -0.00000000, -0.00124347, 0.00000000, 0.00150592, -0.00000000, -0.00113351, 0.00000000, -0.00000000, 0.00000000, 0.00167392, -0.00000000, -0.00326645, 0.00000000, 0.00391384, -0.00000000, -0.00287903, 0.00000000, -0.00000000, 0.00000000, 0.00400244, -0.00000000, -0.00757230, 0.00000000, 0.00881288, -0.00000000, -0.00631429, 0.00000000, -0.00000000, 0.00000000, 0.00841560, -0.00000000, -0.01568386, 0.00000000, 0.01806306, -0.00000000, -0.01287253, 0.00000000, -0.00000000, -0.00000000, 0.01729172, -0.00000000, -0.03274160, 0.00000000, 0.03872998, -0.00000000, -0.02876437, -0.00000000, -0.00000000, 0.00000000, 0.04513478, -0.00000000, -0.09890740, 0.00000000, 0.15002130, -0.00000000, -0.18667576, -0.00000000, 0.19999178, -0.00000000, -0.18667576, -0.00000000, 0.15002130, 0.00000000, -0.09890740, -0.00000000, 0.04513478, 0.00000000, -0.00000000, -0.00000000, -0.02876437, -0.00000000, 0.03872998, 0.00000000, -0.03274160, -0.00000000, 0.01729172, -0.00000000, -0.00000000, 0.00000000, -0.01287253, -0.00000000, 0.01806306, 0.00000000, -0.01568386, -0.00000000, 0.00841560, 0.00000000, -0.00000000, 0.00000000, -0.00631429, -0.00000000, 0.00881288, 0.00000000, -0.00757230, -0.00000000, 0.00400244, 0.00000000, -0.00000000, 0.00000000, -0.00287903, -0.00000000, 0.00391384, 0.00000000, -0.00326645, -0.00000000, 0.00167392, 0.00000000, -0.00000000, 0.00000000, -0.00113351, -0.00000000, 0.00150592, 0.00000000, -0.00124347, -0.00000000, 0.00064390, 0.00000000, -0.00000000, -0.00000000, -0.00049618, -0.00000000, 0.00075680})
M.firwin_bandstop = radio.Float32Type.vector_from_array({-0.00075745, 0.00000000, 0.00049661, 0.00000000, -0.00000000, 0.00000000, -0.00064445, 0.00000000, 0.00124455, -0.00000000, -0.00150723, 0.00000000, 0.00113449, 0.00000000, 0.00000000, 0.00000000, -0.00167537, -0.00000000, 0.00326927, -0.00000000, -0.00391722, 0.00000000, 0.00288152, 0.00000000, -0.00000000, 0.00000000, -0.00400590, 0.00000000, 0.00757885, 0.00000000, -0.00882050, 0.00000000, 0.00631975, 0.00000000, -0.00000000, 0.00000000, -0.00842288, 0.00000000, 0.01569741, -0.00000000, -0.01807867, 0.00000000, 0.01288365, -0.00000000, -0.00000000, 0.00000000, -0.01730667, 0.00000000, 0.03276990, 0.00000000, -0.03876346, -0.00000000, 0.02878923, 0.00000000, -0.00000000, 0.00000000, -0.04517380, 0.00000000, 0.09899289, 0.00000000, -0.15015098, 0.00000000, 0.18683712, 0.00000000, 0.80065864, 0.00000000, 0.18683712, 0.00000000, -0.15015098, 0.00000000, 0.09899289, 0.00000000, -0.04517380, 0.00000000, -0.00000000, 0.00000000, 0.02878923, -0.00000000, -0.03876346, 0.00000000, 0.03276990, 0.00000000, -0.01730667, 0.00000000, -0.00000000, -0.00000000, 0.01288365, 0.00000000, -0.01807867, -0.00000000, 0.01569741, 0.00000000, -0.00842288, 0.00000000, -0.00000000, 0.00000000, 0.00631975, 0.00000000, -0.00882050, 0.00000000, 0.00757885, 0.00000000, -0.00400590, 0.00000000, -0.00000000, 0.00000000, 0.00288152, 0.00000000, -0.00391722, -0.00000000, 0.00326927, -0.00000000, -0.00167537, 0.00000000, 0.00000000, 0.00000000, 0.00113449, 0.00000000, -0.00150723, -0.00000000, 0.00124455, 0.00000000, -0.00064445, 0.00000000, -0.00000000, 0.00000000, 0.00049661, 0.00000000, -0.00075745})

M.fir_root_raised_cosine = radio.Float32Type.vector_from_array({0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099})

M.fir_hilbert_transform = radio.Float32Type.vector_from_array({0.00000000, -0.00081401, 0.00000000, -0.00088687, 0.00000000, -0.00101196, 0.00000000, -0.00119383, 0.00000000, -0.00143720, 0.00000000, -0.00174704, 0.00000000, -0.00212861, 0.00000000, -0.00258757, 0.00000000, -0.00313004, 0.00000000, -0.00376282, 0.00000000, -0.00449354, 0.00000000, -0.00533091, 0.00000000, -0.00628508, 0.00000000, -0.00736808, 0.00000000, -0.00859444, 0.00000000, -0.00998198, 0.00000000, -0.01155303, 0.00000000, -0.01333600, 0.00000000, -0.01536779, 0.00000000, -0.01769725, 0.00000000, -0.02039053, 0.00000000, -0.02353939, 0.00000000, -0.02727486, 0.00000000, -0.03179044, 0.00000000, -0.03738391, 0.00000000, -0.04453770, 0.00000000, -0.05408693, 0.00000000, -0.06761150, 0.00000000, -0.08850018, 0.00000000, -0.12556872, 0.00000000, -0.21115005, 0.00000000, -0.63626701, 0.00000000, 0.63626701, 0.00000000, 0.21115005, 0.00000000, 0.12556872, 0.00000000, 0.08850018, 0.00000000, 0.06761150, 0.00000000, 0.05408693, 0.00000000, 0.04453770, 0.00000000, 0.03738391, 0.00000000, 0.03179044, 0.00000000, 0.02727486, 0.00000000, 0.02353939, 0.00000000, 0.02039053, 0.00000000, 0.01769725, 0.00000000, 0.01536779, 0.00000000, 0.01333600, 0.00000000, 0.01155303, 0.00000000, 0.00998198, 0.00000000, 0.00859444, 0.00000000, 0.00736808, 0.00000000, 0.00628508, 0.00000000, 0.00533091, 0.00000000, 0.00449354, 0.00000000, 0.00376282, 0.00000000, 0.00313004, 0.00000000, 0.00258757, 0.00000000, 0.00212861, 0.00000000, 0.00174704, 0.00000000, 0.00143720, 0.00000000, 0.00119383, 0.00000000, 0.00101196, 0.00000000, 0.00088687, 0.00000000, 0.00081401, 0.00000000})

return M