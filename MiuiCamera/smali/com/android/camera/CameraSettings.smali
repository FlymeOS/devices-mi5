.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static final BOTTOM_CONTROL_HEIGHT:I

.field private static final MMS_VIDEO_DURATION:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

.field public static final TOP_CONTROL_HEIGHT:I

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z

.field private static sEdgePhotoEnable:Z

.field public static sRemindMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSceneToFlash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 250
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    .line 251
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 259
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    .line 261
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    .line 263
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 265
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 267
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    .line 270
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "auto"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "landscape"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sports"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night-portrait"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "beach"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "snow"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sunset"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "fireworks"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "backlight"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "flowers"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string v1, "pref_camera_mode_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    return-void

    .line 217
    :cond_0
    const/16 v0, 0x1e

    goto/16 :goto_0
.end method

.method public static addExtraHeight(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # I

    .prologue
    .line 958
    sget-boolean v0, Lcom/android/camera/Device;->IS_NEXUS5:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "can_nav_bar_hide"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 961
    invoke-static {p0}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    .line 963
    :cond_0
    return p1
.end method

.method public static cancelRemind(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1597
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1599
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_remind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1602
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 923
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v1

    .line 924
    .local v1, "previewPanel":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 926
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 927
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->addExtraHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 931
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 937
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 939
    return-void

    .line 934
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 935
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    goto :goto_0
.end method

.method private static changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 942
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    .line 943
    .local v1, "statusBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 945
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 946
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->addExtraHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 954
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 955
    return-void

    .line 952
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private static changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V
    .locals 6
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 898
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v4

    if-nez v4, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    .line 900
    .local v2, "previewPanel":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 902
    .local v1, "p1":Landroid/widget/FrameLayout$LayoutParams;
    if-nez p1, :cond_3

    .line 904
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-nez v4, :cond_2

    sget v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 906
    .local v0, "margin":I
    :goto_1
    sget v4, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-static {p0, v4}, Lcom/android/camera/CameraSettings;->addExtraHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v0, v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 919
    .end local v0    # "margin":I
    :goto_2
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 904
    goto :goto_1

    .line 910
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 912
    sget v4, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    sget v5, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 917
    :cond_4
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v0, -0x1

    .line 992
    invoke-static {p0, p1, v0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 993
    return-void
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 996
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 998
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 999
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/CameraSettings;->changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V

    .line 1001
    :cond_0
    return-void
.end method

.method private static filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "valuesId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 1165
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1166
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/android/camera/CameraSettings;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1167
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1170
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static get4kProfile()I
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 746
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0e001f

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 340
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1403
    const v1, 0x7f0e01ea

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "beautyValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    :cond_1
    return-object v0
.end method

.method public static getCameraId()I
    .locals 3

    .prologue
    .line 668
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCountDownTimes()I
    .locals 3

    .prologue
    .line 1369
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_delay_capture_key"

    const v2, 0x7f0e01b5

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultPreferenceId(I)I
    .locals 1
    .param p0, "prefId"    # I

    .prologue
    .line 825
    sparse-switch p0, :sswitch_data_0

    .line 846
    :cond_0
    :goto_0
    return p0

    .line 827
    :sswitch_0
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const p0, 0x7f0e00d0

    goto :goto_0

    .line 833
    :sswitch_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isFrontVideoQualityShouldBe1080P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const p0, 0x7f0e001d

    goto :goto_0

    .line 840
    :sswitch_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-eqz v0, :cond_0

    .line 841
    :cond_1
    const p0, 0x7f0b0004

    goto :goto_0

    .line 825
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_2
        0x7f0e001c -> :sswitch_1
        0x7f0e00cf -> :sswitch_0
    .end sparse-switch
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0e0127

    .line 1004
    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    :cond_0
    const v0, 0x7f0e0126

    .line 1046
    :cond_1
    :goto_0
    return v0

    .line 1007
    :cond_2
    const-string v1, "pref_camera_hand_night_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    const v0, 0x7f0e0124

    goto :goto_0

    .line 1009
    :cond_3
    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1010
    const v0, 0x7f0e0125

    goto :goto_0

    .line 1011
    :cond_4
    const-string v1, "pref_video_speed_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1013
    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1014
    const v0, 0x7f0e0166

    goto :goto_0

    .line 1015
    :cond_5
    const-string v1, "pref_delay_capture_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1016
    const v0, 0x7f0e01b4

    goto :goto_0

    .line 1017
    :cond_6
    const-string v1, "pref_video_speed_fast_key"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1019
    const-string v0, "pref_video_speed_slow_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1020
    const v0, 0x7f0e0128

    goto :goto_0

    .line 1021
    :cond_7
    const-string v0, "pref_camera_ubifocus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1022
    const v0, 0x7f0e0185

    goto :goto_0

    .line 1023
    :cond_8
    const-string v0, "pref_camera_manual_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1024
    const v0, 0x7f0e018c

    goto :goto_0

    .line 1025
    :cond_9
    const-string v0, "pref_camera_burst_shooting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1026
    const v0, 0x7f0e0197

    goto :goto_0

    .line 1027
    :cond_a
    const-string v0, "pref_audio_focus_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1028
    const v0, 0x7f0e01a3

    goto :goto_0

    .line 1029
    :cond_b
    const-string v0, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1030
    const v0, 0x7f0e01bc

    goto/16 :goto_0

    .line 1031
    :cond_c
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1032
    const v0, 0x7f0e01c2

    goto/16 :goto_0

    .line 1033
    :cond_d
    const-string v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1034
    const v0, 0x7f0e01d2

    goto/16 :goto_0

    .line 1035
    :cond_e
    const-string v0, "pref_camera_fisheye_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1036
    const v0, 0x7f0e01d4

    goto/16 :goto_0

    .line 1037
    :cond_f
    const-string v0, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1038
    const v0, 0x7f0e01d6

    goto/16 :goto_0

    .line 1039
    :cond_10
    const-string v0, "pref_audio_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1040
    const v0, 0x7f0e0103

    goto/16 :goto_0

    .line 1041
    :cond_11
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1042
    const v0, 0x7f0e01db

    goto/16 :goto_0

    .line 1043
    :cond_12
    const-string v0, "pref_camera_square_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1044
    const v0, 0x7f0e01e1

    goto/16 :goto_0

    .line 1046
    :cond_13
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getFaceBeautifyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const v4, 0x7f0e016d

    const v5, 0x7f0e0168

    .line 1382
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, "faceBeauty":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1384
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1385
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_face_beauty_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_face_beauty_switch_key"

    const-string v4, "pref_camera_face_beauty_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "beautySwitch":Ljava/lang/String;
    const-string v2, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1390
    const v2, 0x7f0e016c

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1399
    .end local v0    # "beautySwitch":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1391
    .restart local v0    # "beautySwitch":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1392
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1394
    .end local v0    # "beautySwitch":Ljava/lang/String;
    :cond_2
    const-string v2, "pref_camera_face_beauty_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1395
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_face_beauty_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 1351
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1244
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_mode_key"

    const v2, 0x7f0e006c

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 3

    .prologue
    .line 1316
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_focus_position_key"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 866
    const-string v0, "pref_front_mirror_key"

    const v1, 0x7f0e018f

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;
    .locals 4
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "burst"    # Z

    .prologue
    .line 1565
    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0e0053

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, "jpegQuality":Ljava/lang/String;
    const-string v1, "high"

    .line 1568
    .local v1, "maxQuality":Ljava/lang/String;
    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v2, :cond_1

    .line 1569
    const-string v1, "normal"

    .line 1573
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1577
    .end local v0    # "jpegQuality":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1570
    .restart local v0    # "jpegQuality":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v2, :cond_0

    .line 1571
    const-string v1, "low"

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1577
    goto :goto_1
.end method

.method public static getKValue()I
    .locals 3

    .prologue
    .line 1218
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v2, 0x157c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 1321
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1322
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    :goto_0
    return-object v0

    .line 1323
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1324
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1325
    :cond_1
    int-to-double v0, p1

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1326
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1328
    :cond_2
    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMaxExposureTimes(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1411
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    .line 1415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1419
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1420
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1424
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public static getMinExposureTimes(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1374
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    .line 1378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 14
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v9, 0x0

    const/16 v13, 0x7530

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1448
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1449
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1450
    const-string v10, "CameraSettings"

    const-string v11, "No supported frame rates returned!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :goto_0
    return-object v9

    .line 1455
    :cond_0
    const v4, 0x61a80

    .line 1456
    .local v4, "lowestMinRate":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1457
    .local v7, "rate":[I
    aget v6, v7, v11

    .line 1458
    .local v6, "minFps":I
    aget v5, v7, v12

    .line 1459
    .local v5, "maxFps":I
    if-lt v5, v13, :cond_1

    if-gt v6, v13, :cond_1

    if-ge v6, v4, :cond_1

    .line 1462
    move v4, v6

    goto :goto_1

    .line 1468
    .end local v5    # "maxFps":I
    .end local v6    # "minFps":I
    .end local v7    # "rate":[I
    :cond_2
    const/4 v8, -0x1

    .line 1469
    .local v8, "resultIndex":I
    const/4 v1, 0x0

    .line 1470
    .local v1, "highestMaxRate":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1471
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1472
    .restart local v7    # "rate":[I
    aget v6, v7, v11

    .line 1473
    .restart local v6    # "minFps":I
    aget v5, v7, v12

    .line 1474
    .restart local v5    # "maxFps":I
    if-ne v6, v4, :cond_3

    if-ge v1, v5, :cond_3

    .line 1475
    move v1, v5

    .line 1476
    move v8, v2

    .line 1470
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1480
    .end local v5    # "maxFps":I
    .end local v6    # "minFps":I
    .end local v7    # "rate":[I
    :cond_4
    if-ltz v8, :cond_5

    .line 1481
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    goto :goto_0

    .line 1483
    :cond_5
    const-string v10, "CameraSettings"

    const-string v11, "Can\'t find an appropriate frame rate range!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPreferVideoQuality()I
    .locals 5

    .prologue
    .line 420
    const v3, 0x7f0e001c

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "defaultQuality":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 428
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_video_quality_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 434
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v3

    .line 432
    :cond_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "qualityStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static getPreviewAspectRatio(II)F
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "ratio":F
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p0

    int-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 324
    const v0, 0x3fe38e39

    .line 328
    :goto_0
    return v0

    .line 326
    :cond_0
    const v0, 0x3faaaaab

    goto :goto_0
.end method

.method public static getRenderAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 332
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_square_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x2

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getShaderEffect()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1291
    const-string v4, "pref_camera_gradienter_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1292
    sget v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 1311
    .local v2, "shader":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1293
    .end local v2    # "shader":Ljava/lang/String;
    :cond_1
    const-string v4, "pref_camera_tilt_shift_mode"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1294
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    const-string v5, "pref_camera_tilt_shift_key"

    const v6, 0x7f0e016f

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, "mode":Ljava/lang/String;
    const v4, 0x7f0e0172

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1297
    sget v3, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    goto :goto_0

    .line 1298
    :cond_2
    const v4, 0x7f0e0173

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1299
    sget v3, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    goto :goto_0

    .line 1301
    .end local v1    # "mode":Ljava/lang/String;
    :cond_3
    const-string v4, "pref_camera_fisheye_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1302
    sget v3, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    goto :goto_0

    .line 1303
    :cond_4
    const-string v4, "pref_camera_magic_mirror_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1306
    :cond_5
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    const-string v5, "pref_camera_shader_coloreffect_key"

    const v6, 0x7f0e0085

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1309
    .restart local v2    # "shader":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Lcom/android/camera/preferences/ListPreference;

    .prologue
    .line 1333
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1334
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v1, v2

    .line 1335
    .local v1, "length":I
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_0

    .line 1336
    const v2, 0x7f0e01f2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1342
    :goto_0
    return-object v2

    .line 1337
    :cond_0
    div-int/lit8 v2, v1, 0x3

    if-le v0, v2, :cond_1

    .line 1338
    const v2, 0x7f0e01f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1339
    :cond_1
    if-lez v0, :cond_2

    .line 1340
    const v2, 0x7f0e01f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1342
    :cond_2
    const v2, 0x7f0e01f3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSmartShutterPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1228
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_key_camera_smart_shutter_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrictAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 374
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    .line 376
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    const/4 v0, 0x2

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 468
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "pref_video_speed_slow_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    .line 759
    .local v0, "quality4k":I
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_0
    invoke-static {p0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .end local v0    # "quality4k":I
    :cond_1
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 767
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_2
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_3
    const/16 v2, 0xb

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 773
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_4
    invoke-static {p0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 776
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_5
    invoke-static {p0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 779
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_6
    return-object v1
.end method

.method public static getSystemEdgeMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1533
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_handgrip"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_clean"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_screenshot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public static getUIStyleByPreview(II)I
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    .line 972
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    const/4 v0, 0x0

    .line 988
    :cond_0
    :goto_0
    return v0

    .line 975
    :cond_1
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_2

    .line 976
    const/4 v0, 0x1

    goto :goto_0

    .line 978
    :cond_2
    const/4 v0, 0x0

    .line 979
    .local v0, "index":I
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v2, v4, v6

    .line 980
    .local v2, "ratio":D
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_3

    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    .line 982
    const/4 v0, 0x2

    goto :goto_0

    .line 983
    :cond_3
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_4

    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_0

    .line 986
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVideoQuality()I
    .locals 1

    .prologue
    .line 411
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x6

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v0

    goto :goto_0
.end method

.method public static getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 1520
    const-string v0, "on"

    const-string v1, "pref_video_speed_fast_key"

    const-string v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    const-string v0, "fast"

    .line 1525
    :goto_0
    return-object v0

    .line 1522
    :cond_0
    const-string v0, "on"

    const-string v1, "pref_video_speed_slow_key"

    const-string v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    const-string v0, "slow"

    goto :goto_0

    .line 1525
    :cond_1
    const-string v0, "normal"

    goto :goto_0
.end method

.method public static is4KHigherVideoQuality(I)Z
    .locals 2
    .param p0, "quality"    # I

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsdMotionEnable()Z
    .locals 3

    .prologue
    .line 1506
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_asd_night_key"

    const v2, 0x7f0b0005

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsdNightEnable()Z
    .locals 3

    .prologue
    .line 1501
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_asd_night_key"

    const v2, 0x7f0b0005

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsdPopupEnable()Z
    .locals 3

    .prologue
    .line 1496
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_asd_popup_key"

    const v2, 0x7f0b0006

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 361
    if-ge p0, p1, :cond_0

    .line 362
    move v2, p0

    .line 363
    .local v2, "tmp":I
    move p0, p1

    .line 364
    move p1, v2

    .line 366
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 367
    .local v0, "ratio":D
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 368
    const/4 v3, 0x1

    .line 370
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio1_1(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 391
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio4_3(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 348
    if-ge p0, p1, :cond_0

    .line 349
    move v2, p0

    .line 350
    .local v2, "tmp":I
    move p0, p1

    .line 351
    move p1, v2

    .line 353
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 354
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 355
    const/4 v3, 0x1

    .line 357
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAudioCaptureOpen()Z
    .locals 1

    .prologue
    .line 1255
    const-string v0, "pref_audio_capture"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackCamera()Z
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isBackCamera()Z

    move-result v0

    return v0
.end method

.method public static isBurstShootingEnable(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 885
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "burst"

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    const v2, 0x7f0e01a7

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSoundOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x1

    .line 854
    const-string v1, "pref_camerasound_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z
    .locals 5
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v2, 0x0

    .line 1582
    const-string v3, "pref_dual_camera_use_hint_shown_times_key"

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1583
    .local v1, "shownTimes":I
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1584
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_dual_camera_use_hint_shown_times_key"

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1586
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isEdgePhotoEnable()Z
    .locals 1

    .prologue
    .line 1529
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFaceBeautyOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1347
    if-eqz p0, :cond_0

    const v0, 0x7f0e0168

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFaceWaterMarkOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 862
    const-string v0, "pref_face_info_watermark_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .prologue
    .line 1259
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method public static isMovieSolidOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 870
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_movie_solid_key"

    const v1, 0x7f0e0122

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNearAspectRatio(IIII)Z
    .locals 2
    .param p0, "width1"    # I
    .param p1, "height1"    # I
    .param p2, "width2"    # I
    .param p3, "height2"    # I

    .prologue
    .line 387
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNearRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 395
    if-ge p0, p1, :cond_0

    .line 396
    move v2, p0

    .line 397
    .local v2, "tmp":I
    move p0, p1

    .line 398
    move p1, v2

    .line 400
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 402
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 405
    :cond_1
    const/4 v3, 0x1

    .line 407
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNeedRemind(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1590
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_remind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoCameraModeSelected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1512
    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v2

    .line 1513
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1514
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1516
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isPressDownCapture()Z
    .locals 4

    .prologue
    .line 1488
    const v1, 0x7f0e01a7

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "focus"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string v3, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRecordLocation(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 850
    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isScanQRCode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 880
    const-string v0, "pref_scan_qrcode_key"

    const v1, 0x7f0e0134

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStringValueContained(Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "checkedValue"    # Ljava/lang/Object;
    .param p1, "entryValueId"    # I

    .prologue
    .line 1173
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "values":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->isStringValueContains(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isStringValueContains(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "checkedValue"    # Ljava/lang/Object;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1179
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v4

    .line 1180
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1181
    .local v1, "beautyValue":Ljava/lang/CharSequence;
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1182
    const/4 v4, 0x1

    goto :goto_0

    .line 1180
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSwitchOn(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1195
    const-string v0, "on"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCaptureVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 815
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 816
    .local v0, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string v2, "pref_video_captrue_ability_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHFRVideoCaptureSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "slow"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isWaterMarkOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 858
    const-string v0, "pref_watermark_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readEdgePhotoSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1540
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_handgrip_photo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 1544
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1541
    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 680
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "exposure":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 686
    :goto_0
    return v2

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 663
    const-string v0, "pref_camera_id_key"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 702
    const-string v2, "pref_camera_zoom_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "zoom":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 708
    :goto_0
    return v2

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid zoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static resetExposure()V
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 697
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    return-void
.end method

.method public static resetOpenCameraFailTimes()V
    .locals 4

    .prologue
    .line 809
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 810
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 811
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 812
    return-void
.end method

.method public static resetPreference(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1189
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1190
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1192
    return-void
.end method

.method public static resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 11
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "cameraId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1050
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1051
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_exposure_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1052
    const-string v7, "pref_camera_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1053
    const-string v7, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1054
    const-string v7, "pref_camera_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1055
    const-string v7, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1056
    const-string v7, "pref_camera_hand_night_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1057
    const-string v7, "pref_camera_scenemode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1058
    const-string v7, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1059
    const-string v7, "pref_video_speed_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1060
    const-string v7, "pref_camera_face_beauty_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1061
    const-string v7, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1062
    const-string v7, "pref_camera_id_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1063
    const-string v7, "pref_delay_capture_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1064
    const-string v7, "pref_delay_capture_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1065
    const-string v7, "pref_audio_capture"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    const-string v7, "pref_video_speed_fast_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1067
    const-string v7, "pref_video_speed_slow_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1068
    const-string v7, "pref_camera_ubifocus_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1069
    const-string v7, "pref_camera_manual_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1070
    const-string v7, "pref_camera_panoramamode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1071
    const-string v7, "pref_camera_burst_shooting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1072
    const-string v7, "pref_audio_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1073
    const-string v7, "pref_camera_gradienter_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1074
    const-string v7, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1075
    const-string v7, "pref_camera_fisheye_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1076
    const-string v7, "pref_camera_magic_mirror_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1077
    const-string v7, "pref_camera_stereo_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 1081
    .local v5, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "pref_camerasound_key"

    aput-object v8, v7, v10

    const/4 v8, 0x1

    const-string v9, "pref_scan_qrcode_key"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "pref_watermark_key"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "pref_camera_referenceline_key"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "pref_camera_facedetection_key"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "pref_camera_movie_solid_key"

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1087
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1088
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v6    # "value":Ljava/lang/Object;
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1090
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1091
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1092
    const-string v7, "pref_camera_facedetection_key"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isThirdDevice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1094
    :cond_1
    const-string v7, "on"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1103
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const-string v7, "pref_video_quality_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1104
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_3

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1105
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1106
    const-string v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1115
    :cond_3
    :goto_1
    const-string v7, "pref_camera_skin_beautify_key"

    const v8, 0x7f0a0051

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1117
    const-string v7, "pref_camera_face_beauty_switch_key"

    const v8, 0x7f0a004e

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1121
    const-string v7, "pref_qc_camera_saturation_key"

    const v8, 0x7f0a002a

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1123
    const-string v7, "pref_qc_camera_contrast_key"

    const v8, 0x7f0a0027

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1125
    const-string v7, "pref_qc_camera_sharpness_key"

    const v8, 0x7f0a002d

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1127
    const-string v7, "pref_video_quality_key"

    const v8, 0x7f0a0001

    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1131
    const-string v7, "pref_front_mirror_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1132
    if-eqz v6, :cond_4

    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 1133
    const-string v7, "pref_front_mirror_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1137
    :cond_4
    const-string v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1138
    if-eqz v6, :cond_5

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1139
    const-string v7, "pref_camera_flashmode_key"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1140
    const-string v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1144
    :cond_5
    const-string v7, "pref_camera_hdr_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1145
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_6

    const-string v7, "auto"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "off"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1146
    const-string v7, "pref_camera_hdr_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1149
    :cond_6
    const-string v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1150
    if-nez v6, :cond_9

    .line 1151
    const-string v7, "pref_camera_recordlocation_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1152
    .local v4, "location":Ljava/lang/Object;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v4, :cond_7

    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "location":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1154
    :cond_7
    const-string v7, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1155
    const-string v7, "pref_camera_recordlocation_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1157
    :cond_8
    const-string v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1159
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1160
    return-void

    .line 1107
    :cond_a
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1108
    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove unsupported video quality "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public static resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 719
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 721
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 724
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 725
    .local v0, "currentCameraId":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 726
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 731
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 733
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 734
    return-void
.end method

.method public static setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 9
    .param p0, "proxy"    # Lcom/android/camera/hardware/CameraHardwareProxy;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3e8

    const/16 v7, 0xfa

    const/16 v6, -0xfa

    const/16 v5, -0x3e8

    const/4 v4, 0x0

    .line 439
    if-nez p2, :cond_0

    .line 465
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 442
    .local v1, "meteringRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 443
    .local v2, "weight":I
    const v3, 0x7f0e0101

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 445
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 446
    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 447
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 448
    const/4 v2, 0x1

    .line 463
    :goto_1
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    goto :goto_0

    .line 449
    :cond_1
    const v3, 0x7f0e0100

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 451
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 452
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 453
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 454
    const/4 v2, 0x0

    goto :goto_1

    .line 457
    :cond_2
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 458
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 459
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 460
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 461
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setEdgeMode(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1547
    if-eqz p0, :cond_1

    .line 1548
    if-eqz p1, :cond_0

    .line 1549
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readEdgePhotoSetting(Landroid/content/Context;)V

    .line 1551
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1552
    const-string v4, "input"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1554
    .local v0, "im":Landroid/hardware/input/InputManager;
    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/input/InputManager;

    aput-object v4, v2, v6

    .line 1555
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "switchTouchEdgeMode"

    const-string v5, "(I)V"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 1556
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 1557
    aget-object v4, v2, v6

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v1, v4, v0, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1562
    .end local v0    # "im":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-void

    .line 1557
    .restart local v0    # "im":Landroid/hardware/input/InputManager;
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSystemEdgeMode(Landroid/content/Context;)I

    move-result v3

    goto :goto_0
.end method

.method public static setFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1238
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1241
    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 1249
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_focus_mode_switching_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1252
    return-void
.end method

.method public static setFocusPosition(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 1279
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_focus_position_key"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1282
    return-void
.end method

.method public static setKValue(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1212
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1215
    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2
    .param p0, "externalPriority"    # Z

    .prologue
    .line 1428
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1429
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_priority_storage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1431
    return-void
.end method

.method public static setShaderEffect(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1286
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1287
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1288
    return-void
.end method

.method public static setSmartShutterPosition(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1222
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_camera_smart_shutter_position"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1225
    return-void
.end method

.method public static updateFocusMode()V
    .locals 4

    .prologue
    .line 1269
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "oldFocusMode":Ljava/lang/String;
    const-string v2, "pref_camera_manual_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    const-string v0, "manual"

    .line 1272
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 1274
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    .line 1276
    :cond_0
    return-void

    .line 1270
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_1
    const-string v0, "continuous-picture"

    goto :goto_0
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 8

    .prologue
    .line 801
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 802
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v4, "open_camera_fail_key"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 803
    .local v2, "openCameraFail":J
    const-string v1, "open_camera_fail_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 804
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 805
    return-wide v2
.end method

.method public static upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 5
    .param p0, "combPref"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v4, 0x1

    .line 640
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 641
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_version_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 642
    .local v1, "version":I
    if-ge v1, v4, :cond_0

    .line 643
    const-string v2, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    const-string v2, "pref_camera_first_touch_toast_shown_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    :cond_0
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "prefLocal"    # Landroid/content/SharedPreferences;

    .prologue
    .line 652
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_local_version_key"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 654
    .local v1, "version":I
    if-nez v1, :cond_0

    .line 655
    const/4 v1, 0x1

    .line 658
    :cond_0
    const-string v2, "pref_local_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 660
    return-void
.end method

.method public static writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 691
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 693
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "cameraId"    # I

    .prologue
    .line 674
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 677
    return-void
.end method

.method public static writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 713
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 715
    return-void
.end method
