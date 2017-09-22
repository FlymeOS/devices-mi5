.class public Lcom/android/camera/ui/FlashButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCameraOpened:Z

.field private mDispatching:Z

.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "FlashButton"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 38
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 187
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRestoredFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_restored_flashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPopupShown()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09005d

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    goto :goto_0
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x4

    const v2, 0x7f09005d

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    :cond_0
    return-void
.end method

.method private setRestoredFlashMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 396
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 397
    const-string v1, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    return-void

    .line 400
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "pref_camera_restored_flashmode_key"

    const-string v2, "torch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-eqz v2, :cond_2

    const-string p1, "off"

    goto :goto_1

    :cond_2
    const-string p1, "auto"

    goto :goto_1
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 176
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_0
.end method

.method private triggerPopup()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->showPopup()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public avoidTorchOpen()Z
    .locals 4

    .prologue
    .line 78
    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "live"

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_2
    return v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_camera_hdr_key"

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "off"

    goto :goto_3

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 339
    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 342
    :cond_0
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 361
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 350
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 351
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 356
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 357
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FlashButton;->notifyPopupVisibleChange(Z)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 283
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    :cond_0
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 330
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 331
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public initializeXml(Z)V
    .locals 4
    .param p1, "isVideo"    # Z

    .prologue
    const/4 v3, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    .line 43
    if-eqz p1, :cond_1

    const v1, 0x7f060008

    .line 45
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 50
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 60
    :cond_0
    :goto_1
    return-void

    .line 43
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060004

    goto :goto_0

    .line 53
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .restart local v1    # "resId":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_1
.end method

.method public isFlashPressed()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepSetValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "restoredValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 260
    .end local v1    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v1    # "restoredValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 99
    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    .line 100
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 102
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 106
    .local v0, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 109
    .local v1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 110
    const-string v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_5

    .line 112
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 113
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 106
    .end local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 116
    .restart local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_6

    .line 118
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 119
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_6
    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    .line 127
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->doTapButton()V

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 448
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->initializeXml(Z)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    .line 71
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    .line 75
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 230
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 231
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 213
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setImageResource(I)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 220
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 208
    :cond_0
    return-void
.end method

.method public restoreKeptValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "restoredValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 273
    .end local v0    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 p1, 0x0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 300
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 305
    :cond_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 288
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 240
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->initializePopup()V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public updateFlashModeAccordingHdr(Ljava/lang/String;)V
    .locals 3
    .param p1, "hdrMode"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 414
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "storeFlashMode":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 417
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    const-string v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 439
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 415
    .restart local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    .restart local v0    # "flashMode":Ljava/lang/String;
    :cond_2
    const-string v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    const-string v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_3
    const-string v2, "live"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    const-string v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    goto :goto_1

    .line 437
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    .line 146
    :cond_1
    return-void
.end method
