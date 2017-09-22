.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ModulePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public static getCurrentModule()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return v0
.end method

.method private initModulePickView()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const v0, 0x7f02012c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    const v0, 0x7f020034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static isCameraModule()Z
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoModule()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentModule(I)V
    .locals 0
    .param p0, "module"    # I

    .prologue
    .line 88
    sput p0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    .line 89
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    .line 52
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 76
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v6, :cond_0

    move v6, v1

    .line 77
    .local v6, "module":I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f090015

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 85
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 28
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    .line 29
    iget-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/android/camera/ui/V6ModulePicker;->initModulePickView()V

    .line 32
    :cond_0
    return-void

    .line 28
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 39
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 57
    const/16 p1, 0x8

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 60
    return-void
.end method
