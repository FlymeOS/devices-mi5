.class public Lcom/android/settings/toggleposition/FixedDividerSortableListView;
.super Landroid/widget/MiuiListView;
.source "FixedDividerSortableListView.java"


# instance fields
.field private arX:Lcom/android/settings/toggleposition/j;

.field private arY:Landroid/view/View$OnTouchListener;

.field private arZ:Landroid/view/View$OnTouchListener;

.field private arx:I

.field private ary:I

.field private asa:Z

.field private asb:I

.field private asc:I

.field private asd:I

.field private ase:I

.field private asf:I

.field private asg:Landroid/graphics/drawable/BitmapDrawable;

.field private ash:Landroid/graphics/drawable/Drawable;

.field private asi:I

.field private asj:I

.field private ask:I

.field private asl:I

.field private asm:I

.field private asn:I

.field private aso:Landroid/graphics/drawable/Drawable;

.field private asp:I

.field private mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MiuiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    .line 39
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 56
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asn:I

    .line 59
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ash:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ash:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ash:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 78
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asi:I

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asj:I

    .line 82
    new-instance v0, Lcom/android/settings/toggleposition/g;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/g;-><init>(Lcom/android/settings/toggleposition/FixedDividerSortableListView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arY:Landroid/view/View$OnTouchListener;

    .line 89
    new-instance v0, Lcom/android/settings/toggleposition/h;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/h;-><init>(Lcom/android/settings/toggleposition/FixedDividerSortableListView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arZ:Landroid/view/View$OnTouchListener;

    .line 98
    return-void
.end method

.method private a(IIII)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    .line 101
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 102
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 104
    return-object v0
.end method

.method private a(ILandroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 343
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/FixedDividerSortableListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private cU(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 339
    :cond_0
    return-void

    .line 266
    :cond_1
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() sort item from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 271
    const-string v0, "FixedDividerSortableListView"

    const-string v1, "updateDraggingToPisition() for case: ...ddd---..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-le v0, p1, :cond_4

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-le v0, v1, :cond_4

    .line 273
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 274
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 275
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() at divider mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ne v0, v1, :cond_3

    .line 277
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() across divider item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asf:I

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v1, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 279
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    goto/16 :goto_0

    .line 281
    :cond_3
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v1, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 288
    :cond_4
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_7

    .line 289
    const-string v0, "FixedDividerSortableListView"

    const-string v1, "updateDraggingToPisition() for case: ...---uuu..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_1
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-ge v0, p1, :cond_7

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-ge v0, v1, :cond_7

    .line 291
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-lt p1, v0, :cond_5

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 292
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 293
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() at divider mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_5
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le p1, v0, :cond_6

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ne v0, v1, :cond_6

    .line 295
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() across divider item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-direct {p0, v3, v3, v1, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 297
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    goto :goto_1

    .line 299
    :cond_6
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-direct {p0, v3, v3, v1, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 307
    :cond_7
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 308
    const-string v0, "FixedDividerSortableListView"

    const-string v1, "updateDraggingToPisition() for case: ...ddd+++..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_2
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-ge v0, p1, :cond_a

    .line 310
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_8

    .line 311
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 312
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() at divider mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 313
    :cond_8
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le p1, v0, :cond_9

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ne v0, v1, :cond_9

    .line 314
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asf:I

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v3, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 315
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() across divider item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :cond_9
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    neg-int v1, v1

    invoke-direct {p0, v3, v3, v3, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 318
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 324
    :cond_a
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 325
    const-string v0, "FixedDividerSortableListView"

    const-string v1, "updateDraggingToPisition() for case: ...+++uuu..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_3
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-le v0, p1, :cond_0

    .line 327
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-gt p1, v0, :cond_b

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_b

    .line 328
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 329
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() at divider mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 330
    :cond_b
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ge p1, v0, :cond_c

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ne v0, v1, :cond_c

    .line 331
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asf:I

    add-int/2addr v1, v2

    invoke-direct {p0, v3, v3, v3, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 332
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() across divider item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 334
    :cond_c
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-direct {p0, v3, v3, v3, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    .line 335
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraggingToPisition() item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private d(Landroid/view/MotionEvent;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getLastVisiblePosition()I

    move-result v0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 252
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_0

    .line 254
    iget-object v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 255
    iget-object v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_0

    .line 261
    :goto_1
    return v0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/16 v5, 0x99

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arX:Lcom/android/settings/toggleposition/j;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0, p1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->d(Landroid/view/MotionEvent;)I

    move-result v0

    .line 382
    if-ltz v0, :cond_1

    .line 384
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    .line 385
    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 386
    iput-boolean v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    .line 394
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getLocationOnScreen([I)V

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->mTmpLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asb:I

    .line 396
    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asb:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asc:I

    .line 399
    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 404
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 405
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asg:Landroid/graphics/drawable/BitmapDrawable;

    .line 406
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->aso:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->aso:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->aso:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ash:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asi:I

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    iget v6, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asj:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 430
    const-string v1, "FixedDividerSortableListView"

    const-string v2, "onTouch() view.startAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    invoke-direct {p0, v1, v2, v7, v7}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 434
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/android/settings/toggleposition/j;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arX:Lcom/android/settings/toggleposition/j;

    .line 118
    return-void
.end method

.method public cT(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    .line 109
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-ltz v0, :cond_5

    .line 140
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asb:I

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asc:I

    sub-int v1, v0, v1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getHeaderViewsCount()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getLastVisiblePosition()I

    move-result v0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 158
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ash:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->aso:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asn:I

    if-ge v1, v2, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->aso:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    :cond_4
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    :cond_5
    return-void
.end method

.method public getListenerForStartingSort()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arY:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected obtainView(I[Z)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v0, "FixedDividerSortableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainView() position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mDraggingFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mDraggingTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0, p1, p2}, Landroid/widget/MiuiListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 360
    const/4 v0, 0x0

    .line 361
    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-ne v2, p1, :cond_1

    .line 362
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asd:I

    invoke-direct {p0, v0, v2, v3, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 363
    const-string v2, "FixedDividerSortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtainView() item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move out animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 375
    return-object v1

    .line 365
    :cond_1
    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-ge v2, p1, :cond_2

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-gt p1, v2, :cond_2

    .line 366
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    neg-int v0, v0

    invoke-direct {p0, v3, v3, v3, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 367
    const-string v2, "FixedDividerSortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtainView() item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move up animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_2
    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-le v2, p1, :cond_0

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-lt p1, v2, :cond_0

    .line 370
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ase:I

    invoke-direct {p0, v3, v3, v3, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 371
    const-string v2, "FixedDividerSortableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtainView() item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set move down animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-boolean v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MiuiListView;->onSizeChanged(IIII)V

    .line 131
    const/4 v0, 0x1

    int-to-float v1, p2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ask:I

    .line 132
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ask:I

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asl:I

    .line 133
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ask:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asm:I

    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 181
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 188
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asb:I

    if-eq v2, v0, :cond_1

    .line 190
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->d(Landroid/view/MotionEvent;)I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_4

    .line 192
    :cond_3
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 194
    :cond_4
    iget v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asp:I

    if-ne v0, v3, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asf:I

    .line 198
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->cU(I)V

    .line 200
    iput v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asb:I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->invalidate()V

    .line 205
    iget v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asm:I

    if-le v2, v3, :cond_7

    .line 207
    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asm:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ask:I

    div-int/2addr v1, v2

    .line 212
    :cond_6
    :goto_2
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 208
    :cond_7
    iget v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asl:I

    if-ge v2, v3, :cond_6

    .line 210
    iget v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asl:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ask:I

    div-int/2addr v1, v2

    goto :goto_2

    .line 223
    :pswitch_2
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    if-ltz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arX:Lcom/android/settings/toggleposition/j;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    if-ltz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arX:Lcom/android/settings/toggleposition/j;

    iget v2, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/android/settings/toggleposition/j;->OnOrderChanged(II)V

    .line 235
    :cond_8
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->asa:Z

    .line 236
    iput v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    .line 237
    iput v5, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arx:I

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->invalidate()V

    goto/16 :goto_1

    .line 231
    :cond_9
    iget v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->ary:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->a(ILandroid/view/animation/Animation;)V

    goto :goto_3

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public uH()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/toggleposition/FixedDividerSortableListView;->arZ:Landroid/view/View$OnTouchListener;

    return-object v0
.end method
