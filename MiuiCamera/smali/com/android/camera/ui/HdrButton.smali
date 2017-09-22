.class public Lcom/android/camera/ui/HdrButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "HdrButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/HdrButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->showPopup()V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->toggle()V

    goto :goto_0
.end method

.method private filterPreference()V
    .locals 10

    .prologue
    .line 183
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 185
    .local v6, "value":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-eqz v7, :cond_4

    .line 189
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v7

    if-nez v7, :cond_2

    .line 190
    :cond_1
    const-string v7, "on"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v5}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 214
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v6}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    .line 216
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 218
    :cond_3
    return-void

    .line 194
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v7

    if-nez v7, :cond_7

    .line 195
    :cond_5
    const-string v7, "live"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 197
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_7

    .line 198
    const-string v7, "normal"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 199
    iget-object v7, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 197
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    .end local v1    # "entryValues":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_7
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v7, :cond_8

    .line 205
    const-string v7, "normal"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v7

    if-nez v7, :cond_2

    .line 208
    const-string v7, "auto"

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 286
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializePopup()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    :cond_0
    const-string v1, "HdrButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 331
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 332
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09005e

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    goto :goto_0
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x4

    const v2, 0x7f09005e

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    :cond_0
    return-void
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 273
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 281
    .end local v0    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 282
    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 164
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 340
    const/4 v0, 0x1

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
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 309
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 298
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    .line 299
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 304
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 305
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HdrButton;->notifyPopupVisibleChange(Z)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeXml(Z)V
    .locals 6
    .param p1, "isVideo"    # Z

    .prologue
    const/16 v4, 0x8

    .line 41
    iput-boolean p1, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    .line 42
    if-eqz p1, :cond_1

    const v1, 0x7f060009

    .line 44
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iput-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->filterPreference()V

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_2

    .line 50
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 58
    :goto_1
    return-void

    .line 42
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060005

    goto :goto_0

    .line 53
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .restart local v1    # "resId":I
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v2

    .line 54
    .local v2, "visible":Z
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 54
    goto :goto_2
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->clearAnimation()V

    .line 117
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-ne v4, v5, :cond_4

    .line 125
    iget-object v4, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v1

    .line 126
    .local v1, "visible":Z
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 127
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 129
    .end local v1    # "visible":Z
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 131
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 136
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    goto :goto_0

    .line 127
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "visible":Z
    :cond_6
    const-string v2, "off"

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->doTapButton()V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 249
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HdrButton;->initializeXml(Z)V

    .line 63
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 68
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->findCurrentIndex()I

    move-result v0

    .line 93
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setImageResource(I)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 100
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 75
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 88
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->initializePopup()V

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 318
    :cond_0
    return-void
.end method

.method public updateHdrAccordingFlash(Ljava/lang/String;)V
    .locals 2
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "hdrMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "auto"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 238
    :cond_1
    :goto_1
    return-void

    .line 224
    :cond_2
    const-string v1, "off"

    goto :goto_0

    .line 227
    :cond_3
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1

    .line 232
    :cond_4
    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    .line 171
    .local v0, "visible":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 172
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 174
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 178
    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 180
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_3
    const-string v1, "off"

    goto :goto_1

    .line 178
    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method
