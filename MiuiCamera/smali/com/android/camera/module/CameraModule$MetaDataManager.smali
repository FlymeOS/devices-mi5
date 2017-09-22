.class Lcom/android/camera/module/CameraModule$MetaDataManager;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaDataManager"
.end annotation


# instance fields
.field private mCurrentScene:I

.field private mLastScene:I

.field private mLastestState:I

.field private mLastestTimes:I

.field private mSceneShieldMask:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4691
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4685
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 4686
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 4687
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 4688
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 4689
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 4691
    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    .line 4673
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    .line 4673
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/camera/module/CameraModule$MetaDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    .line 4673
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method private applyScene(I)V
    .locals 6
    .param p1, "scene"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4866
    const-string v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    packed-switch p1, :pswitch_data_0

    .line 4889
    :cond_0
    :goto_0
    return-void

    .line 4869
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4870
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4871
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 4876
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 4877
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4878
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4881
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 4884
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 4867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private detectScene(I)I
    .locals 2
    .param p1, "senceResult"    # I

    .prologue
    .line 4786
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p1, v0

    .line 4789
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 4792
    const/4 v0, 0x0

    .line 4813
    :goto_0
    return v0

    .line 4793
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4794
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 4798
    const/4 v0, 0x1

    goto :goto_0

    .line 4799
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    .line 4803
    const/4 v0, 0x2

    goto :goto_0

    .line 4804
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    .line 4810
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 4813
    :cond_5
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private printMetaData([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4757
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4758
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4757
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4760
    :cond_0
    const-string v2, "  data[8]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4761
    array-length v2, p1

    if-le v2, v9, :cond_1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v9

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSceneShieldMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    aget-byte v6, p1, v9

    iget v7, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4766
    const-string v2, "CameraMetaDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraMetaData buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    return-void

    .line 4761
    :cond_1
    const-string v2, "not exist"

    goto :goto_1
.end method

.method private resetSceneMode()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4740
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4741
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 4744
    :cond_0
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 4745
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 4746
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 4747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 4748
    return-void
.end method

.method private restoreScene(I)V
    .locals 4
    .param p1, "scene"    # I

    .prologue
    const/16 v3, 0x8

    .line 4836
    const-string v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    packed-switch p1, :pswitch_data_0

    .line 4863
    :cond_0
    :goto_0
    return-void

    .line 4839
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4840
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4841
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 4845
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4846
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 4848
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4851
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4852
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4856
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4857
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setScene(I)Z
    .locals 5
    .param p1, "scene"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 4817
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 4818
    const-string v1, "CameraMetaDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScene "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastestState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastestTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentScene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    :cond_0
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    if-eq v1, p1, :cond_2

    .line 4822
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 4823
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 4832
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4824
    :cond_2
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    if-ge v1, v4, :cond_1

    .line 4825
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 4826
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    if-ne v4, v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    if-eq v1, v2, :cond_1

    .line 4827
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 4828
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 4752
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    .line 4753
    return-void
.end method

.method public resetFilter()V
    .locals 1

    .prologue
    .line 4733
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 4734
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 4735
    const-string v0, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 4736
    const-string v0, "pref_camera_asd_motion_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 4737
    return-void
.end method

.method public setAsdDetectMask(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4694
    const/4 v1, 0x0

    .line 4695
    .local v1, "mask":B
    const/4 v2, -0x1

    .line 4696
    .local v2, "scene":I
    const/4 v0, 0x0

    .line 4697
    .local v0, "enable":Z
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4698
    const/4 v1, 0x1

    .line 4699
    const/4 v2, 0x0

    .line 4700
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4718
    :cond_0
    :goto_0
    const-string v3, "CameraMetaDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAsdDetectMask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    if-eqz v1, :cond_1

    .line 4720
    if-eqz v0, :cond_5

    .line 4721
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 4730
    :cond_1
    :goto_1
    return-void

    .line 4702
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4703
    const/16 v1, 0x10

    .line 4704
    const/4 v2, 0x1

    .line 4705
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    const v4, 0x7f0e01a8

    invoke-virtual {v3, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 4707
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "pref_camera_asd_night_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4709
    const/16 v1, 0x40

    .line 4710
    const/4 v2, 0x2

    .line 4711
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v0

    goto :goto_0

    .line 4712
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pref_camera_asd_motion_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4714
    const/16 v1, 0x20

    .line 4715
    const/4 v2, 0x3

    .line 4716
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdMotionEnable()Z

    move-result v0

    goto/16 :goto_0

    .line 4723
    :cond_5
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 4725
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    if-ne v2, v3, :cond_1

    .line 4726
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    goto :goto_1
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 4770
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 4771
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->printMetaData([B)V

    .line 4773
    :cond_0
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 4782
    :cond_1
    :goto_0
    return-void

    .line 4774
    :cond_2
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectScene(I)I

    move-result v0

    .line 4777
    .local v0, "currentDetect":I
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setScene(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4778
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 4779
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 4780
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->applyScene(I)V

    goto :goto_0
.end method
