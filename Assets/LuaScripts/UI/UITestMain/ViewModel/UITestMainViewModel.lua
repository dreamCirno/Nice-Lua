--[[
-- added by wsh @ 2017-12-01
-- UILogin��ͼ��
-- ע�⣺
-- 1����Ա�������Ԥ����__init������������ߴ���ɶ���
-- 2��OnEnable����ÿ���ڴ��ڴ�ʱ���ã�ֱ��ˢ��
-- 3����������ο�����淶
--]]


local UITestMainViewModel = BaseClass("UITestMainViewModel",UIBaseViewModel)
local base = UIBaseViewModel

local function OnCreate(self)
    self.hp_text = BindableProperty.New(2122)
    self.mp_text = BindableProperty.New(90999)
    self.money_text = BindableProperty.New(876787)

    self.fighting_btn = {
        OnClick = function()
            SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
        end
    }
    self.logout_btn = {
        OnClick = function()
            SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
        end
    }
end

-- ��
local function OnEnable(self)
    base.OnEnable(self)
end

-- �ر�
local function OnDisable(self)
    base.OnDisable(self)
    -- ������Ա����
end

-- ����
local function OnDistroy(self)
    base.OnDistroy(self)
    -- ������Ա����
end

UITestMainViewModel.OnCreate = OnCreate
UITestMainViewModel.OnEnable = OnEnable
UITestMainViewModel.OnDisable = OnDisable
UITestMainViewModel.OnDistroy = OnDistroy



return UITestMainViewModel