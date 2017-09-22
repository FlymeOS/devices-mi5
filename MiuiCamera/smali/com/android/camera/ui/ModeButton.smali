.class public Lcom/android/camera/ui/ModeButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "ModeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "pref_camera_mode_settings_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09001d

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->updateVisible()V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    .line 25
    return-void
.end method

.method public updateRemind()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 28
    iget-object v8, p0, Lcom/android/camera/ui/ModeButton;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v3

    .line 29
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 30
    .local v5, "remind":Z
    sget-object v8, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 31
    .local v6, "remindKey":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "pref_camera_mode_settings_key"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    :cond_1
    const/4 v5, 0x1

    .line 38
    .end local v6    # "remindKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 40
    .local v4, "paddingWidth":I
    if-eqz v5, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 43
    .local v7, "remindMargin":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200bd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v10, v10, v0, v10}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablePadding(I)V

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    invoke-virtual {p0, v8, v11, v4, v11}, Lcom/android/camera/ui/ModeButton;->setPaddingRelative(IIII)V

    .line 56
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "remindMargin":I
    :cond_3
    :goto_0
    return-void

    .line 50
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    .local v1, "drs":[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    aget-object v8, v1, v8

    if-eqz v8, :cond_3

    .line 52
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0, v4, v11, v4, v11}, Lcom/android/camera/ui/ModeButton;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method public updateVisible()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/ModeButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeButton;->setVisibility(I)V

    .line 75
    return-void

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
