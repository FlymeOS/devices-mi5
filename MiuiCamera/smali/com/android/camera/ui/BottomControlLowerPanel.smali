.class public Lcom/android/camera/ui/BottomControlLowerPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlLowerPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION:I


# instance fields
.field private mControlVisible:Z

.field private mModuleAnimationCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

.field public mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    return-void

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BottomControlLowerPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomControlLowerPanel;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    return v0
.end method

.method private clearLastAnimation()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    .line 190
    :cond_0
    return-void
.end method

.method private initModulePickTransView(Z)Landroid/graphics/drawable/TransitionDrawable;
    .locals 6
    .param p1, "toVideo"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 133
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 134
    .local v0, "mImages":[Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    .line 136
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    .line 137
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 144
    .local v1, "modulePickTransition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 145
    return-object v1

    .line 139
    .end local v1    # "modulePickTransition":Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    .line 141
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 104
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p2, p3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10
    .param p1, "thumbnailButtonWidth"    # F
    .param p2, "shutterButtonWidth"    # F
    .param p3, "modulePickerWidth"    # F
    .param p4, "padding"    # F

    .prologue
    .line 80
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    return-void
.end method

.method private initShutterTransView(Z)Landroid/graphics/drawable/TransitionDrawable;
    .locals 6
    .param p1, "toVideo"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 149
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 150
    .local v0, "mImages":[Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    .line 152
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    .line 157
    :goto_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 158
    .local v1, "shutterTransition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 159
    return-object v1

    .line 154
    .end local v1    # "shutterTransition":Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    .line 155
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 241
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BottomControl animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    if-nez v0, :cond_2

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->setVisibility(I)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;)V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    .line 251
    :cond_2
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v0, Lcom/android/camera/ui/BottomControlLowerPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlLowerPanel$1;-><init>(Lcom/android/camera/ui/BottomControlLowerPanel;Ljava/lang/Runnable;)V

    .line 268
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;)V

    .line 269
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;)V

    .line 270
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;)V

    .line 272
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public animateSwitch(Ljava/lang/Runnable;Z)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "toVideo"    # Z

    .prologue
    .line 167
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->clearLastAnimation()V

    .line 170
    invoke-direct {p0, p2}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickTransView(Z)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 171
    .local v0, "moduleTransition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-direct {p0, p2}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterTransView(Z)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    .line 172
    .local v1, "shutterTransition":Landroid/graphics/drawable/TransitionDrawable;
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    .line 173
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    sget v2, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 175
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget v2, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 177
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v3, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v3, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    return-void
.end method

.method public animationSwitchToCamera(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 130
    return-void
.end method

.method public animationSwitchToVideo(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 126
    return-void
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    return-object v0
.end method

.method public getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->post(Ljava/lang/Runnable;)Z

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    .line 204
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 195
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 62
    const v4, 0x7f09000e

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    .line 63
    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    .line 64
    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    .line 65
    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    .line 66
    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    .line 67
    const v4, 0x7f090016

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 69
    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 70
    .local v3, "thumbnailButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 71
    .local v2, "shutterButtonWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    .line 72
    .local v0, "modulePickerWidth":F
    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v1, v4

    .line 74
    .local v1, "padding":F
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 75
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickerSwitchAnimation(FFFF)V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 48
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 237
    return-void
.end method
