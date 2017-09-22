.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field public mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mLastMutexView:Lcom/android/camera/ui/MutexView;

.field private mMainContent:Landroid/view/View;

.field private mMutexRecover:Ljava/lang/Runnable;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field public mSettingPage:Lcom/android/camera/ui/V6SettingPage;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field public mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

.field public mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    .line 181
    new-instance v0, Lcom/android/camera/ui/UIController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$2;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/UIController;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/UIController;
    .param p1, "x1"    # Lcom/android/camera/ui/MutexView;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object p1
.end method

.method private hideModeSetting()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeButton()Lcom/android/camera/ui/ModeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->dismiss()V

    .line 481
    return-void
.end method

.method private onDismissModeSetting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 489
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 498
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 501
    const v2, 0x7f09000c

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method private onMutexViewHide(I)V
    .locals 4
    .param p1, "sender"    # I

    .prologue
    .line 169
    sparse-switch p1, :sswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 173
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005d -> :sswitch_0
        0x7f09005e -> :sswitch_0
        0x7f09005f -> :sswitch_0
        0x7f090086 -> :sswitch_1
    .end sparse-switch
.end method

.method private onMutexViewShow(I)V
    .locals 3
    .param p1, "sender"    # I

    .prologue
    const/4 v2, 0x1

    .line 149
    sparse-switch p1, :sswitch_data_0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    .line 166
    return-void

    .line 153
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->hide()V

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005d -> :sswitch_0
        0x7f09005e -> :sswitch_0
        0x7f09005f -> :sswitch_0
        0x7f090086 -> :sswitch_1
    .end sparse-switch
.end method

.method private onShowModeSetting()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 485
    return-void
.end method

.method private showModeSetting()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->onShowModeSettings()V

    .line 460
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 461
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->show()V

    .line 471
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 474
    const v2, 0x7f09001d

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 196
    packed-switch p3, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAsdIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomControlLowerGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    return-object v0
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    return-object v0
.end method

.method public getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    return-object v0
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    return-object v0
.end method

.method public getModeButton()Lcom/android/camera/ui/ModeButton;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    return-object v0
.end method

.method public getModeExitView()Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getObjectView()Lcom/android/camera/ui/ObjectView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    return-object v0
.end method

.method public getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    return-object v0
.end method

.method public getPanoramaViewRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public getPopupParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupParentLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 452
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0

    .line 452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSettingButton()Lcom/android/camera/ui/V6SettingButton;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    return-object v0
.end method

.method public getSettingPage()Lcom/android/camera/ui/V6SettingPage;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getStereoButton()Lcom/android/camera/ui/StereoButton;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    return-object v0
.end method

.method public getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    return-object v0
.end method

.method public getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public getWarningMessageParent()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWarningMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 109
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 110
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewShow(I)V

    :goto_0
    move v0, v1

    .line 145
    :goto_1
    return v0

    .line 113
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewHide(I)V

    goto :goto_0

    .line 116
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 118
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onShowModeSetting()V

    goto :goto_1

    .line 122
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onDismissModeSetting()V

    goto :goto_1

    .line 126
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    goto :goto_1

    .line 130
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->showModeSetting()V

    goto :goto_1

    .line 134
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    goto :goto_1

    .line 138
    :sswitch_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 142
    goto :goto_1

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000b -> :sswitch_0
        0x7f09000c -> :sswitch_1
        0x7f09001d -> :sswitch_3
        0x7f090078 -> :sswitch_2
        0x7f09007c -> :sswitch_5
        0x7f090085 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    .line 509
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    .line 91
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    .line 45
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    .line 46
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    .line 47
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    .line 48
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 49
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    .line 50
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    .line 51
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 52
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SurfaceViewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    .line 53
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    .line 54
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 61
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/UIController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController$1;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onPause()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onResume()V

    .line 102
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 103
    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    return-void
.end method

.method public showDebugView()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    :cond_0
    return-void
.end method

.method public updatePreferenceGroup()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06000a

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 214
    return-void

    .line 211
    :cond_0
    const v1, 0x7f060001

    goto :goto_0
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomControlLowerPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    .line 239
    return-void
.end method

.method public useProperView()V
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->initSurfaceView()V

    goto :goto_0
.end method
