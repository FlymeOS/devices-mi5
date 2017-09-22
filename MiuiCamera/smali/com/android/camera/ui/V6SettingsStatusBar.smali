.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/MutexView;


# instance fields
.field private mApertureTextView:Landroid/widget/TextView;

.field private mEvTextView:Landroid/widget/TextView;

.field private mMarginTop:I

.field private mMarginTopLandscape:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOrientation:I

.field private mVisible:Z

.field private mZoomTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6SettingsStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingsStatusBar;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return v0
.end method

.method private setSubViewVisible(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visible"    # I
    .param p3, "sameContent"    # Z

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 217
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x4

    const v2, 0x7f090086

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    if-nez v0, :cond_2

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 74
    :cond_2
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Lcom/android/camera/ui/V6SettingsStatusBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar$1;-><init>(Lcom/android/camera/ui/V6SettingsStatusBar;Ljava/lang/Runnable;)V

    .line 92
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 96
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public isSubViewShown()Z
    .locals 3

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 230
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v2, 0x1

    .line 234
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 61
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 208
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 50
    return-void
.end method

.method public updateAperture()V
    .locals 6

    .prologue
    .line 145
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_stereo_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 149
    .local v0, "preference":Lcom/android/camera/preferences/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 151
    .local v1, "same":Z
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 156
    .end local v0    # "preference":Lcom/android/camera/preferences/ListPreference;
    .end local v1    # "same":Z
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method public updateEV()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 115
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 116
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v6

    mul-float v0, v5, v6

    .line 117
    .local v0, "ev":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3d4ccccd    # 0.05f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 118
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    const-string v3, "-"

    .line 119
    .local v3, "symbol":Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%s %.1f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 121
    .local v2, "same":Z
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v9, v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 126
    .end local v2    # "same":Z
    .end local v3    # "symbol":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :goto_1
    return-void

    .line 118
    :cond_0
    const-string v3, "+"

    goto :goto_0

    .line 124
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6, v10}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_1
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    .line 102
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "pref_camera_stereo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    goto :goto_0
.end method

.method public updateZoom()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 129
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 130
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v3

    .line 132
    .local v3, "valueIndex":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v4, v5, v6

    .line 133
    .local v4, "zoomScale":F
    const v5, 0x3f8147ae    # 1.01f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 134
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "x %.1f"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    .local v1, "same":Z
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v9, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 142
    .end local v1    # "same":Z
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "valueIndex":I
    .end local v4    # "zoomScale":F
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6, v7}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_0
.end method
