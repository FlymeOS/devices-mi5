.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 38
    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$1;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$2;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SkinBeautyButton;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SkinBeautyButton;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09005f

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    .line 170
    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 173
    :cond_0
    return v0
.end method

.method protected dismissSubPopup()Z
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 115
    :cond_0
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 249
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 215
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto :goto_0

    .line 228
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 229
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 230
    .local v6, "visible":Z
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x4

    const v2, 0x7f09005f

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    :cond_4
    if-eqz v6, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, "SkinBeautyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 158
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected initializeSubPopup()V
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    .line 124
    .local v2, "subPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v1

    .line 130
    .local v1, "root":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 132
    .local v0, "group":Lcom/android/camera/preferences/PreferenceGroup;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v4

    aput-object v2, v3, v4

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 59
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 274
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 280
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onFinishInflate()V

    .line 52
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/camera/ui/V6AbstractSettingPopup;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 55
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 83
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method protected showSubPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializeSubPopup()V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    .line 98
    .local v0, "subPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eq v1, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 106
    return-void
.end method
