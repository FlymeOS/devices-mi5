.class public Lmiui/view/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;,
        Lmiui/view/MiuiKeyBoardView$KeyButton;
    }
.end annotation


# static fields
.field private static final FUNC_KEY_RATIO:F = 1.6f

.field private static final HORIZONTAL_MARGIN_RATIO:F = 0.2f

.field private static final OK_KEY_RATIO:F = 2.8f

.field private static final PREVIEW_ANIMATION_DURATION:I = 0x64

.field private static final SHOW_PREVIEW_DURATION:J = 0x12cL

.field private static final SIZE_GROUP:[[F

.field private static final SPACE_KEY_RATIO:F = 5.8f

.field private static final SPACE_STR:Ljava/lang/String; = " "

.field private static final VERTICAL_MARGIN_RATIO:F = 0.17f


# instance fields
.field private mAllKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnCapsLock:Landroid/view/View;

.field private mBtnLetterDelete:Landroid/view/View;

.field private mBtnLetterOK:Landroid/view/View;

.field private mBtnLetterSpace:Landroid/view/View;

.field private mBtnSymbolDelete:Landroid/view/View;

.field private mBtnSymbolOK:Landroid/view/View;

.field private mBtnSymbolSpace:Landroid/view/View;

.field private mBtnToLetterBoard:Landroid/view/View;

.field private mBtnToSymbolBoard:Landroid/view/View;

.field private mConfirmHide:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIsShowingPreview:Z

.field private mIsUpperMode:Z

.field private mKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterBoard:Landroid/widget/FrameLayout;

.field private mPopupViewHeight:I

.field private mPopupViewWidth:I

.field private mPopupViewX:I

.field private mPopupViewY:I

.field private mPreviewText:Landroid/widget/TextView;

.field private final mSendDeleteActionRunnable:Ljava/lang/Runnable;

.field private mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field private mShowPreviewLastTime:J

.field private mShrinkToBottonAnimation:Landroid/view/animation/Animation;

.field private mStretchFromBottonAnimation:Landroid/view/animation/Animation;

.field private mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x3

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_3
    .array-data 4
        0x40333333    # 2.8f
        0x40b9999a    # 5.8f
        0x40333333    # 2.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    .line 60
    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 66
    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 68
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 69
    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 70
    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 245
    new-instance v0, Lmiui/view/MiuiKeyBoardView$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$1;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    .line 381
    new-instance v0, Lmiui/view/MiuiKeyBoardView$2;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$2;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x1103000a

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x11030015

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x11030009

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setFocusableInTouchMode(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lmiui/view/MiuiKeyBoardView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/MiuiKeyBoardView;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method private calcAndStartShowPreviewAnim(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 364
    instance-of v1, p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v1, :cond_0

    .line 365
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 369
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 370
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 371
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 373
    .local v0, "viewPos":[F
    invoke-direct {p0, p1, v0, v6, v7}, Lmiui/view/MiuiKeyBoardView;->getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F

    .line 374
    aget v1, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    .line 375
    aget v1, v0, v7

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    .line 376
    invoke-direct {p0, v7}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    .line 377
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    .end local v0    # "viewPos":[F
    :cond_0
    return-void
.end method

.method private getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F
    .locals 10
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "useTransformation"    # Z
    .param p4, "ignoreScale"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    .local v0, "scale":F
    const/4 v3, 0x0

    aput v3, p2, v7

    aput v3, p2, v6

    .line 154
    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    .line 158
    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    .line 159
    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 161
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    if-eq v2, p0, :cond_2

    move-object v1, v2

    .line 162
    check-cast v1, Landroid/view/View;

    .line 163
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    .line 167
    :cond_1
    aget v3, p2, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    .line 168
    aget v3, p2, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 170
    goto :goto_0

    .line 171
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    .line 172
    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v6

    .line 173
    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v7

    .line 175
    :cond_3
    return v0
.end method

.method private onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 234
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 235
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardDelete()V

    goto :goto_0

    .line 237
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private onKeyBoardOK()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 241
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardOK()V

    goto :goto_0

    .line 243
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 228
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 229
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1, p1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 138
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 139
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 145
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 148
    :cond_2
    return-void
.end method

.method private shiftLetterBoard()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 423
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 424
    .local v1, "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 431
    .end local v1    # "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 432
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_4

    .line 433
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0x11020060

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 437
    :goto_3
    return-void

    :cond_3
    move v3, v5

    .line 431
    goto :goto_2

    .line 435
    :cond_4
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0x1102005f

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private showLetterBoard(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 416
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    return-void

    :cond_0
    move v0, v2

    .line 416
    goto :goto_0

    :cond_1
    move v2, v1

    .line 417
    goto :goto_1
.end method

.method private showPreviewAnim(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x2

    .line 388
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 389
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 391
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 397
    :goto_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 400
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 401
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/MiuiKeyBoardView$3;

    invoke-direct {v1, p0}, Lmiui/view/MiuiKeyBoardView$3;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    iput-boolean p1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 413
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 393
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 395
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .locals 3
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .prologue
    .line 215
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 216
    .local v0, "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    .end local v0    # "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    return-void
.end method

.method keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V
    .locals 15
    .param p1, "board"    # Landroid/view/ViewGroup;
    .param p2, "width"    # I
    .param p3, "normalKeyWidth"    # I
    .param p4, "horizontalMargin"    # I
    .param p5, "normalKeyHeight"    # I
    .param p6, "verticalMargin"    # I

    .prologue
    .line 325
    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v9, v11

    .line 326
    .local v9, "rowCount":I
    const/4 v3, 0x0

    .line 327
    .local v3, "index":I
    iget v7, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 328
    .local v7, "paddingTop":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_3

    .line 329
    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    aget-object v8, v11, v2

    .line 330
    .local v8, "row":[F
    const/4 v10, 0x0

    .line 331
    .local v10, "totalSize":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v11, v8

    if-ge v4, v11, :cond_0

    .line 332
    aget v11, v8, v4

    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 334
    :cond_0
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int v11, v11, p4

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 335
    move/from16 v0, p2

    int-to-float v11, v0

    sub-float/2addr v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v5, v11

    .line 336
    .local v5, "padding":I
    const/4 v4, 0x0

    :goto_2
    array-length v11, v8

    if-ge v4, v11, :cond_2

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 338
    .local v1, "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    move v6, v5

    .line 339
    .local v6, "paddingLeft":I
    const-string v11, "!"

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 340
    int-to-float v11, v6

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 342
    :cond_1
    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    add-int v12, v7, p5

    invoke-virtual {v1, v6, v7, v11, v12}, Lmiui/view/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    .line 344
    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    move/from16 v0, p4

    int-to-float v13, v0

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v5, v11

    .line 345
    add-int/lit8 v3, v3, 0x1

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 347
    .end local v1    # "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v6    # "paddingLeft":I
    :cond_2
    add-int v11, p6, p5

    add-int/2addr v7, v11

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v4    # "j":I
    .end local v5    # "padding":I
    .end local v8    # "row":[F
    .end local v10    # "totalSize":F
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 287
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 288
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 294
    :cond_4
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    goto :goto_0

    .line 295
    :cond_5
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 296
    :cond_6
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardOK()V

    goto :goto_0

    .line 297
    :cond_7
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 298
    :cond_8
    const-string v0, " "

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :cond_9
    check-cast p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x110a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 102
    const v1, 0x110a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    .line 104
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 105
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipChildren(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipToPadding(Z)V

    .line 109
    const v1, 0x110b001b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 111
    const v1, 0x110b001c

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 112
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    const v1, 0x110b001d

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 114
    const v1, 0x110b001e

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 115
    const v1, 0x110b001f

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    .line 116
    const v1, 0x110b0020

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    .line 117
    const v1, 0x110b0021

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    .line 119
    const v1, 0x110b002f

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 120
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    const v1, 0x110b0030

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 122
    const v1, 0x110b0031

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    .line 123
    const v1, 0x110b0032

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    .line 124
    const v1, 0x110b0033

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 127
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 128
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 307
    sub-int v2, p4, p2

    .line 308
    .local v2, "keyboardWidth":I
    sub-int v7, p5, p3

    .line 309
    .local v7, "keyboardHeight":I
    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    const/4 v8, 0x0

    aget-object v1, v1, v8

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr v0, v1

    float-to-int v3, v0

    .line 310
    .local v3, "normalKeyWidth":I
    int-to-float v0, v3

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 311
    .local v4, "horizontalMargin":I
    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f95c28f    # 1.17f

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 312
    .local v5, "normalKeyHeight":I
    int-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 313
    .local v6, "verticalMargin":I
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v8, 0x0

    sub-int v9, p5, p3

    invoke-virtual {v0, v1, v8, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 314
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v8, 0x0

    sub-int v9, p5, p3

    invoke-virtual {v0, v1, v8, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 315
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 317
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 319
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v8, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v9, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    add-int/2addr v9, v10

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v11, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 321
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v4, 0x0

    .line 256
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 258
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 279
    .end local v0    # "action":I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 260
    .restart local v0    # "action":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 262
    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->calcAndStartShowPreviewAnim(Landroid/view/View;)V

    .line 264
    :cond_1
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 265
    :cond_2
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v1, v4, v5}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    :pswitch_2
    const-wide/16 v6, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    sub-long/2addr v8, v10

    sub-long v2, v6, v8

    .line 271
    .local v2, "hideDelayed":J
    iget-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .end local v2    # "hideDelayed":J
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_3
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 275
    :cond_4
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .restart local v2    # "hideDelayed":J
    :cond_5
    move-wide v2, v4

    .line 272
    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public removeKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .prologue
    .line 224
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    .line 356
    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    return-void
.end method
