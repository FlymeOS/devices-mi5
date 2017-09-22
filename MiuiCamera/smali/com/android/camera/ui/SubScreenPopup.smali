.class public Lcom/android/camera/ui/SubScreenPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "SubScreenPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SubScreenPopup$AnimationType;,
        Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field private mPopupTranslationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimation:Landroid/animation/ValueAnimator;

.field private mSettingView:Lcom/android/camera/ui/SettingView;

.field private mSubPopupParent:Landroid/widget/FrameLayout;

.field private mTranslationAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mValueBottomLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/camera/ui/SubScreenPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SubScreenPopup$1;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;
    .param p1, "x1"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/SubScreenPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->computeTransY()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;
    .param p1, "x1"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;
    .param p2, "x2"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/SubScreenPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->removeOnPreDrawListener()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SubScreenPopup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    return-object v0
.end method

.method private addOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 202
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeTransY()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method private getItemKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_3

    .line 102
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    const-string v1, "pref_skin_beautify_enlarge_eye_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    const-string v1, "pref_skin_beautify_slim_face_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    .line 108
    const-string v1, "pref_skin_beautify_skin_color_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    const-string v1, "pref_skin_beautify_skin_smooth_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    return-object v0

    .line 113
    :cond_3
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v1, "pref_focus_position_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    .local v0, "transY":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 221
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private removeOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 211
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 213
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "transY"    # I

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    return-void
.end method

.method private setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "transY"    # I
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 238
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 239
    .local v0, "animSlideDown":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    .line 241
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 242
    .local v3, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v6, v3, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    if-eqz v6, :cond_0

    .line 243
    check-cast v3, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    .end local v3    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v3, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 246
    :cond_1
    const-string v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupAnimation: reuse transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_1
    return-object v0

    .line 248
    :cond_2
    new-instance v1, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    .line 249
    .local v1, "animatorListener":Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
    invoke-virtual {v1, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    .line 250
    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    int-to-float v8, p1

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 251
    .local v5, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    const-string v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupAnimation: new transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x1

    .line 185
    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 187
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 197
    .end local v1    # "childCount":I
    :cond_0
    :goto_0
    return v3

    .line 190
    .restart local v1    # "childCount":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "child":Landroid/view/View;
    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 193
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    .line 269
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne p2, v0, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method


# virtual methods
.method public dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 7
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 160
    .local v1, "transY":I
    const-string v3, "V6ManualPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dismissChildPopup: transY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",popup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-nez v1, :cond_3

    .line 162
    sget-object v3, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 163
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v3, p1, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 179
    .end local v1    # "transY":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 181
    :cond_2
    return v2

    .line 170
    .restart local v1    # "transY":I
    :cond_3
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 171
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 174
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "transY":I
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v3, p1, :cond_5

    .line 175
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 7
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->getItemKeys()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v5, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 71
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    .line 72
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    .line 73
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingView;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 74
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 128
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 79
    return-void
.end method

.method public showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x0

    .line 138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1, v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 144
    .local v1, "transY":I
    const-string v2, "V6ManualPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v1, :cond_1

    .line 146
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 147
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    .line 154
    .end local v1    # "transY":I
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v1    # "transY":I
    :cond_1
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 150
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    goto :goto_0
.end method
