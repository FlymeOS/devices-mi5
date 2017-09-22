.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$a;,
        Lmiui/widget/NumberPicker$b;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$c;,
        Lmiui/widget/NumberPicker$g;,
        Lmiui/widget/NumberPicker$f;,
        Lmiui/widget/NumberPicker$d;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;,
        Lmiui/widget/NumberPicker$e;
    }
.end annotation


# static fields
.field static final TA:I = 0x5

.field private static final TB:J = 0x12cL

.field private static final TE:I = 0x2

.field private static final TF:I = 0x8

.field private static final TI:I = 0x320

.field private static final TP:I = 0x12c

.field private static final TQ:F = 0.9f

.field private static final TS:I = 0x2

.field private static final TU:I = 0x30

.field private static final TX:I

.field private static final TY:I = -0x1

.field static final Uc:Lmiui/widget/NumberPicker$Formatter;

.field private static final Vc:[I

.field private static final Vm:F = 45.0f

.field private static final Vo:I = 0xca

.field private static final Vt:[C


# instance fields
.field private Mg:I

.field private final UB:Landroid/widget/Scroller;

.field private UC:I

.field private UD:Lmiui/widget/NumberPicker$g;

.field private UE:Lmiui/widget/NumberPicker$c;

.field private UF:Lmiui/widget/NumberPicker$b;

.field private UH:F

.field private UI:J

.field private UJ:F

.field private UL:I

.field private UM:I

.field private UN:Z

.field private final UO:Z

.field private final UP:I

.field private UQ:Z

.field private UR:Z

.field private US:I

.field private UT:I

.field private UU:I

.field private UV:Z

.field private UW:Z

.field private UX:Lmiui/widget/NumberPicker$a;

.field private Ua:I

.field private Ub:I

.field private final Ud:Landroid/widget/EditText;

.field private final Ue:I

.field private final Uf:I

.field private final Ug:I

.field private final Uh:I

.field private Ui:I

.field private final Uj:Z

.field private Uk:I

.field private Ul:[Ljava/lang/String;

.field private Um:I

.field private Un:I

.field private Uo:I

.field private Up:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private Uq:Lmiui/widget/NumberPicker$OnScrollListener;

.field private Ur:Lmiui/widget/NumberPicker$Formatter;

.field private Us:J

.field private final Ut:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Uu:[I

.field private final Uv:Landroid/graphics/Paint;

.field private Uw:I

.field private Ux:I

.field private Uy:I

.field private final Uz:Landroid/widget/Scroller;

.field private final Va:Lmiui/widget/NumberPicker$f;

.field private Vb:I

.field private Vd:Landroid/graphics/Paint;

.field private Ve:I

.field private Vf:F

.field private Vg:I

.field private Vh:I

.field private Vi:I

.field private Vj:I

.field private Vk:I

.field private Vl:F

.field private Vn:I

.field private Vp:Ljava/lang/CharSequence;

.field private Vq:Landroid/media/SoundPool;

.field private Vr:I

.field private Vs:F

.field private fy:I

.field private qC:Landroid/view/VelocityTracker;

.field private final tN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->TX:I

    .line 124
    new-instance v0, Lmiui/widget/NumberPicker$e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiui/widget/NumberPicker$e;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->Uc:Lmiui/widget/NumberPicker$Formatter;

    .line 413
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->Vc:[I

    .line 1832
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/NumberPicker;->Vt:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 498
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 507
    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 508
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v7, -0x49ffd

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 518
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput v1, p0, Lmiui/widget/NumberPicker;->Ua:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker;->Ub:I

    .line 174
    const/16 v0, 0x190

    iput v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    .line 229
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Lmiui/widget/NumberPicker;->Us:J

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Ut:Landroid/util/SparseArray;

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Uu:[I

    .line 254
    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    .line 345
    iput v2, p0, Lmiui/widget/NumberPicker;->Mg:I

    .line 396
    iput v6, p0, Lmiui/widget/NumberPicker;->Vb:I

    .line 463
    const/16 v0, 0x1e

    iput v0, p0, Lmiui/widget/NumberPicker;->Ve:I

    .line 467
    const/16 v0, 0x19

    iput v0, p0, Lmiui/widget/NumberPicker;->Vg:I

    .line 469
    const/16 v0, 0xe

    iput v0, p0, Lmiui/widget/NumberPicker;->Vh:I

    .line 471
    const/16 v0, 0xa

    iput v0, p0, Lmiui/widget/NumberPicker;->Vi:I

    .line 473
    iput v7, p0, Lmiui/widget/NumberPicker;->Vj:I

    .line 474
    const/high16 v0, 0x7f000000

    iput v0, p0, Lmiui/widget/NumberPicker;->Vk:I

    .line 480
    iput v7, p0, Lmiui/widget/NumberPicker;->Vn:I

    .line 489
    iput v3, p0, Lmiui/widget/NumberPicker;->Vs:F

    .line 519
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 520
    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 521
    iget v3, p0, Lmiui/widget/NumberPicker;->Vh:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Vh:I

    .line 522
    iget v3, p0, Lmiui/widget/NumberPicker;->Vg:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Vg:I

    .line 523
    iget v3, p0, Lmiui/widget/NumberPicker;->Vi:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Vi:I

    .line 524
    iget v3, p0, Lmiui/widget/NumberPicker;->Ua:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Ua:I

    .line 525
    iget v3, p0, Lmiui/widget/NumberPicker;->Ub:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Ub:I

    .line 528
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {v3, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 529
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    .line 530
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vg:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vg:I

    .line 531
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vh:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vh:I

    .line 532
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vi:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vi:I

    .line 533
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vj:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vj:I

    .line 534
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vk:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vk:I

    .line 535
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Vn:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Vn:I

    .line 536
    sget v4, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    iget v5, p0, Lmiui/widget/NumberPicker;->Ve:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Ve:I

    .line 538
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lmiui/widget/NumberPicker;->Vq:Landroid/media/SoundPool;

    .line 541
    iget-object v3, p0, Lmiui/widget/NumberPicker;->Vq:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$raw;->numberpicker_value_change:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lmiui/widget/NumberPicker;->Vr:I

    .line 543
    sget v3, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    .line 545
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->UO:Z

    .line 547
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 550
    iput v4, p0, Lmiui/widget/NumberPicker;->UP:I

    .line 552
    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->Ue:I

    .line 554
    iput v6, p0, Lmiui/widget/NumberPicker;->Uf:I

    .line 556
    const/high16 v4, 0x434a0000    # 202.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Ug:I

    .line 558
    iget v0, p0, Lmiui/widget/NumberPicker;->Uf:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->Ug:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->Uf:I

    iget v4, p0, Lmiui/widget/NumberPicker;->Ug:I

    if-le v0, v4, :cond_1

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    iput v6, p0, Lmiui/widget/NumberPicker;->Uh:I

    .line 565
    iput v6, p0, Lmiui/widget/NumberPicker;->Ui:I

    .line 566
    iget v0, p0, Lmiui/widget/NumberPicker;->Uh:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lmiui/widget/NumberPicker;->Uh:I

    iget v4, p0, Lmiui/widget/NumberPicker;->Ui:I

    if-le v0, v4, :cond_2

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->Uj:Z

    .line 573
    new-instance v0, Lmiui/widget/NumberPicker$f;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$f;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    .line 580
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 582
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 584
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 587
    sget v0, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    .line 588
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    new-instance v3, Lmiui/widget/NumberPicker$1;

    invoke-direct {v3, p0}, Lmiui/widget/NumberPicker$1;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 598
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Lmiui/widget/NumberPicker$d;

    invoke-direct {v4, p0}, Lmiui/widget/NumberPicker$d;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 602
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 603
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 605
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 607
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setScaleX(F)V

    .line 608
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 609
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    iget v2, p0, Lmiui/widget/NumberPicker;->Ve:I

    iget-object v3, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Ve:I

    iget-object v5, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 612
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->fy:I

    .line 614
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->UL:I

    .line 615
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmiui/widget/NumberPicker;->UM:I

    .line 617
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->tN:I

    .line 620
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 621
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 622
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 623
    iget v2, p0, Lmiui/widget/NumberPicker;->Vg:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 624
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 625
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 626
    sget-object v3, Lmiui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 627
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    iput-object v0, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    .line 629
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Vl:F

    .line 631
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    .line 632
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 633
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 634
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->Vn:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->Vi:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 638
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    .line 639
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    .line 641
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 644
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 645
    invoke-virtual {p0, v1}, Lmiui/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 647
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 571
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 580
    goto/16 :goto_1
.end method

.method private N(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1787
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1811
    :goto_0
    return v0

    .line 1792
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1794
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1795
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1796
    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1792
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1805
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v0

    .line 1811
    :goto_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    goto :goto_0

    .line 1806
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(FII)F
    .locals 2

    .prologue
    .line 1390
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1391
    int-to-float v0, p3

    .line 1393
    :goto_0
    return v0

    :cond_0
    sub-int v0, p3, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(FIZ)I
    .locals 2

    .prologue
    .line 1381
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1386
    :goto_0
    return p2

    .line 1384
    :cond_0
    if-eqz p3, :cond_1

    neg-float v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1386
    :goto_1
    const v1, 0xffffff

    and-int/2addr v1, p2

    shl-int/lit8 v0, v0, 0x18

    or-int p2, v1, v0

    goto :goto_0

    .line 1384
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->o(Landroid/view/View;)V

    return-void
.end method

.method private a(ZJ)V
    .locals 2

    .prologue
    .line 1725
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    if-nez v0, :cond_0

    .line 1726
    new-instance v0, Lmiui/widget/NumberPicker$c;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$c;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    .line 1730
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$c;->a(Lmiui/widget/NumberPicker$c;Z)V

    .line 1731
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    invoke-virtual {p0, v0, p2, p3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1732
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 713
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v3, v0, v3

    .line 714
    iget v0, p0, Lmiui/widget/NumberPicker;->Uy:I

    add-int/2addr v0, v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Uw:I

    rem-int/2addr v0, v4

    .line 715
    iget v4, p0, Lmiui/widget/NumberPicker;->Ux:I

    sub-int v0, v4, v0

    .line 716
    if-eqz v0, :cond_2

    .line 717
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/NumberPicker;->Uw:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_0

    .line 718
    if-lez v0, :cond_1

    .line 719
    iget v4, p0, Lmiui/widget/NumberPicker;->Uw:I

    sub-int/2addr v0, v4

    .line 724
    :cond_0
    :goto_0
    add-int/2addr v0, v3

    .line 725
    invoke-virtual {p0, v2, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    move v0, v1

    .line 728
    :goto_1
    return v0

    .line 721
    :cond_1
    iget v4, p0, Lmiui/widget/NumberPicker;->Uw:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 728
    goto :goto_1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UV:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->UV:Z

    return v0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->UV:Z

    return p1
.end method

.method private ak(I)V
    .locals 1

    .prologue
    .line 1577
    iget v0, p0, Lmiui/widget/NumberPicker;->Mg:I

    if-ne v0, p1, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->Mg:I

    .line 1581
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uq:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uq:Lmiui/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private al(I)I
    .locals 4

    .prologue
    .line 1605
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    if-le p1, v0, :cond_1

    .line 1606
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Un:I

    sub-int v1, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v3, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1610
    :cond_0
    :goto_0
    return p1

    .line 1607
    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    if-ge p1, v0, :cond_0

    .line 1608
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v1, p1

    iget v2, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v3, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private am(I)V
    .locals 3

    .prologue
    .line 1650
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ut:Landroid/util/SparseArray;

    .line 1651
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1652
    if-eqz v0, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1655
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    if-le p1, v0, :cond_2

    .line 1656
    :cond_1
    const-string v0, ""

    .line 1665
    :goto_1
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1658
    :cond_2
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1659
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int v0, p1, v0

    .line 1660
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    .line 1662
    :cond_3
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->an(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private an(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ur:Lmiui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ur:Lmiui/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1562
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1563
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1565
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ak(I)V

    .line 1571
    :cond_1
    :goto_0
    return-void

    .line 1567
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Mg:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1568
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UW:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->UW:Z

    return v0
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->UW:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    return v0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;I)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->al(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->j(II)V

    return-void
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->u(Z)V

    return-void
.end method

.method private c([I)V
    .locals 2

    .prologue
    .line 1618
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1619
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1622
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->Un:I

    if-le v0, v1, :cond_1

    .line 1623
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    .line 1625
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1626
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->am(I)V

    .line 1627
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->an(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d([I)V
    .locals 2

    .prologue
    .line 1634
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 1635
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1634
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1637
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 1638
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    if-ge v0, v1, :cond_1

    .line 1639
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    .line 1641
    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1642
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->am(I)V

    .line 1643
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UV:Z

    return v0
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->UQ:Z

    return p1
.end method

.method static synthetic e(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->UT:I

    return v0
.end method

.method private eC()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1106
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Uj:Z

    if-nez v1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    .line 1110
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/widget/NumberPicker;->Vg:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1111
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1112
    const/4 v1, 0x0

    move v2, v0

    .line 1113
    :goto_1
    const/16 v0, 0x9

    if-ge v2, v0, :cond_2

    .line 1114
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1115
    cmpl-float v3, v0, v1

    if-lez v3, :cond_7

    .line 1113
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1119
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->an(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1120
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    .line 1131
    :cond_3
    iput v1, p0, Lmiui/widget/NumberPicker;->Vf:F

    .line 1132
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 1133
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1134
    iget v1, p0, Lmiui/widget/NumberPicker;->Ui:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 1135
    iget v1, p0, Lmiui/widget/NumberPicker;->Uh:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 1136
    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    goto :goto_0

    .line 1122
    :cond_4
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    array-length v3, v2

    move v2, v0

    .line 1123
    :goto_3
    if-ge v2, v3, :cond_3

    .line 1124
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 1125
    iget-object v4, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1126
    cmpl-float v4, v0, v1

    if-lez v4, :cond_6

    .line 1123
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 1138
    :cond_5
    iget v0, p0, Lmiui/widget/NumberPicker;->Uh:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private eD()V
    .locals 5

    .prologue
    .line 1466
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ut:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1467
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Uu:[I

    .line 1468
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v3

    .line 1469
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Uu:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1470
    add-int/lit8 v1, v0, -0x2

    add-int/2addr v1, v3

    .line 1471
    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-eqz v4, :cond_0

    .line 1472
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->al(I)I

    move-result v1

    .line 1474
    :cond_0
    aput v1, v2, v0

    .line 1475
    aget v1, v2, v0

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->am(I)V

    .line 1469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    return-void
.end method

.method private eE()V
    .locals 4

    .prologue
    .line 1536
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1537
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uu:[I

    .line 1538
    array-length v1, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->tN:I

    mul-int/2addr v1, v2

    .line 1539
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    int-to-float v1, v1

    .line 1540
    array-length v0, v0

    int-to-float v0, v0

    .line 1541
    div-float v0, v1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Uk:I

    .line 1542
    iget v0, p0, Lmiui/widget/NumberPicker;->tN:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Uk:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Uw:I

    .line 1545
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1546
    iget v1, p0, Lmiui/widget/NumberPicker;->Uw:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    .line 1548
    iget v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Uy:I

    .line 1549
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1550
    return-void
.end method

.method private eF()V
    .locals 2

    .prologue
    .line 1553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1554
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->tN:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1555
    return-void
.end method

.method private eG()Z
    .locals 3

    .prologue
    .line 1698
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->an(I)Ljava/lang/String;

    move-result-object v0

    .line 1700
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1701
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    const/4 v0, 0x1

    .line 1705
    :goto_1
    return v0

    .line 1698
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0

    .line 1705
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private eH()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1741
    :cond_0
    return-void
.end method

.method private eI()V
    .locals 4

    .prologue
    .line 1748
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Lmiui/widget/NumberPicker$b;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$b;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    .line 1753
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1754
    return-void

    .line 1751
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private eJ()V
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1763
    :cond_0
    return-void
.end method

.method private eK()V
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UE:Lmiui/widget/NumberPicker$c;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1772
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    if-eqz v0, :cond_1

    .line 1773
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1775
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    if-eqz v0, :cond_2

    .line 1776
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UF:Lmiui/widget/NumberPicker$b;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1778
    :cond_2
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$f;->cancel()V

    .line 1779
    return-void
.end method

.method private eL()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1910
    iget v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Uy:I

    sub-int v4, v0, v2

    .line 1911
    if-eqz v4, :cond_1

    .line 1912
    iput v1, p0, Lmiui/widget/NumberPicker;->UC:I

    .line 1913
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lmiui/widget/NumberPicker;->Uw:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 1914
    if-lez v4, :cond_2

    iget v0, p0, Lmiui/widget/NumberPicker;->Uw:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 1916
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1917
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1918
    const/4 v1, 0x1

    .line 1920
    :cond_1
    return v1

    .line 1914
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Uw:I

    goto :goto_0
.end method

.method private eM()V
    .locals 0

    .prologue
    .line 2491
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 2492
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2493
    return-void
.end method

.method static synthetic eN()[C
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmiui/widget/NumberPicker;->Vt:[C

    return-object v0
.end method

.method static synthetic f(Lmiui/widget/NumberPicker;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UW:Z

    return v0
.end method

.method private fling(I)V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1590
    iput v1, p0, Lmiui/widget/NumberPicker;->UC:I

    .line 1592
    if-lez p1, :cond_0

    .line 1593
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1598
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1599
    return-void

    .line 1595
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method static synthetic g(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->US:I

    return v0
.end method

.method static synthetic h(Lmiui/widget/NumberPicker;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lmiui/widget/NumberPicker;->Us:J

    return-wide v0
.end method

.method private h(IZ)V
    .locals 2

    .prologue
    .line 1486
    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    if-ne v0, p1, :cond_0

    .line 1504
    :goto_0
    return-void

    .line 1490
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-eqz v0, :cond_2

    .line 1491
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->al(I)I

    move-result v0

    .line 1496
    :goto_1
    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    .line 1497
    iput v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    .line 1498
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1499
    if-eqz p2, :cond_1

    .line 1500
    invoke-direct {p0, v1, v0}, Lmiui/widget/NumberPicker;->i(II)V

    .line 1502
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1503
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1493
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1494
    iget v1, p0, Lmiui/widget/NumberPicker;->Un:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic i(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->UP:I

    return v0
.end method

.method private i(II)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1713
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vq:Landroid/media/SoundPool;

    iget v1, p0, Lmiui/widget/NumberPicker;->Vr:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1714
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Up:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Up:Lmiui/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    .line 1717
    :cond_0
    return-void
.end method

.method private j(III)I
    .locals 2

    .prologue
    .line 1453
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1454
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1455
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lmiui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1457
    :cond_0
    return p2
.end method

.method static synthetic j(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    return v0
.end method

.method private j(II)V
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    if-nez v0, :cond_0

    .line 1820
    new-instance v0, Lmiui/widget/NumberPicker$g;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$g;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    .line 1824
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$g;->a(Lmiui/widget/NumberPicker$g;I)I

    .line 1825
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    invoke-static {v0, p2}, Lmiui/widget/NumberPicker$g;->b(Lmiui/widget/NumberPicker$g;I)I

    .line 1826
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1827
    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UD:Lmiui/widget/NumberPicker$g;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic k(Lmiui/widget/NumberPicker;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UN:Z

    return v0
.end method

.method static synthetic l(Lmiui/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    return v0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1424
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1435
    :goto_0
    :sswitch_0
    return p1

    .line 1427
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1429
    sparse-switch v1, :sswitch_data_0

    .line 1437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown measure mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1435
    :sswitch_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1429
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private o(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1673
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1682
    :goto_0
    return-void

    .line 1679
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result v0

    .line 1680
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/NumberPicker;->h(IZ)V

    goto :goto_0
.end method

.method private u(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1514
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    .line 1519
    :cond_0
    iput v1, p0, Lmiui/widget/NumberPicker;->UC:I

    .line 1520
    if-eqz p1, :cond_1

    .line 1521
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/NumberPicker;->Uw:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1525
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1533
    :goto_1
    return-void

    .line 1523
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    iget v4, p0, Lmiui/widget/NumberPicker;->Uw:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1527
    :cond_2
    if-eqz p1, :cond_3

    .line 1528
    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lmiui/widget/NumberPicker;->h(IZ)V

    goto :goto_1

    .line 1530
    :cond_3
    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lmiui/widget/NumberPicker;->h(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 968
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    .line 969
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    .line 971
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 976
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 977
    iget v2, p0, Lmiui/widget/NumberPicker;->UC:I

    if-nez v2, :cond_1

    .line 978
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->UC:I

    .line 980
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->UC:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 981
    iput v1, p0, Lmiui/widget/NumberPicker;->UC:I

    .line 982
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 983
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 985
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x100

    const/16 v5, 0x80

    const/16 v4, 0x40

    const/4 v3, -0x1

    .line 918
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_0

    .line 919
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 963
    :goto_0
    return v0

    .line 921
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 922
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 925
    iget v1, p0, Lmiui/widget/NumberPicker;->US:I

    if-ge v0, v1, :cond_2

    .line 926
    const/4 v0, 0x3

    move v1, v0

    .line 932
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 933
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker$a;

    .line 935
    packed-switch v2, :pswitch_data_0

    .line 963
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->UT:I

    if-le v0, v1, :cond_3

    .line 928
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 930
    :cond_3
    const/4 v0, 0x2

    move v1, v0

    goto :goto_1

    .line 937
    :pswitch_1
    invoke-virtual {v0, v1, v5}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 939
    iput v1, p0, Lmiui/widget/NumberPicker;->UU:I

    .line 940
    invoke-virtual {v0, v1, v4, v7}, Lmiui/widget/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 944
    :pswitch_2
    iget v2, p0, Lmiui/widget/NumberPicker;->UU:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lmiui/widget/NumberPicker;->UU:I

    if-eq v2, v3, :cond_1

    .line 946
    iget v2, p0, Lmiui/widget/NumberPicker;->UU:I

    invoke-virtual {v0, v2, v6}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 949
    invoke-virtual {v0, v1, v5}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 951
    iput v1, p0, Lmiui/widget/NumberPicker;->UU:I

    .line 952
    invoke-virtual {v0, v1, v4, v7}, Lmiui/widget/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 957
    :pswitch_3
    invoke-virtual {v0, v1, v6}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 959
    iput v3, p0, Lmiui/widget/NumberPicker;->UU:I

    goto :goto_2

    .line 935
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x1

    .line 869
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 870
    sparse-switch v0, :sswitch_data_0

    .line 901
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 873
    :sswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    goto :goto_0

    .line 877
    :sswitch_1
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-eqz v2, :cond_0

    .line 880
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 882
    :pswitch_0
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-nez v2, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 884
    :goto_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->requestFocus()Z

    .line 885
    iput v0, p0, Lmiui/widget/NumberPicker;->Vb:I

    .line 886
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    .line 887
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 888
    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->u(Z)V

    goto :goto_1

    .line 882
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 888
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 894
    :pswitch_1
    iget v2, p0, Lmiui/widget/NumberPicker;->Vb:I

    if-ne v2, v0, :cond_0

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->Vb:I

    goto :goto_1

    .line 870
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 858
    packed-switch v0, :pswitch_data_0

    .line 864
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 861
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 907
    packed-switch v0, :pswitch_data_0

    .line 913
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 910
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 651
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 653
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eC()V

    .line 654
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1407
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_0

    .line 1408
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1413
    :goto_0
    return-object v0

    .line 1410
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UX:Lmiui/widget/NumberPicker$a;

    if-nez v0, :cond_1

    .line 1411
    new-instance v0, Lmiui/widget/NumberPicker$a;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$a;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->UX:Lmiui/widget/NumberPicker$a;

    .line 1413
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->UX:Lmiui/widget/NumberPicker$a;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1331
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1326
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UN:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1336
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1337
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    .line 1338
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vq:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1339
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 1343
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_1

    .line 1344
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getWidth()I

    .line 1349
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v0

    .line 1350
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v1

    .line 1351
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 1352
    iget v0, p0, Lmiui/widget/NumberPicker;->Uy:I

    int-to-float v0, v0

    .line 1354
    iget v1, p0, Lmiui/widget/NumberPicker;->Ux:I

    iget v3, p0, Lmiui/widget/NumberPicker;->Uw:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v5, v1

    .line 1355
    iget-object v6, p0, Lmiui/widget/NumberPicker;->Ut:Landroid/util/SparseArray;

    .line 1356
    iget-object v7, p0, Lmiui/widget/NumberPicker;->Uu:[I

    move v1, v2

    move v3, v0

    .line 1357
    :goto_1
    array-length v0, v7

    if-ge v1, v0, :cond_3

    .line 1358
    aget v0, v7, v1

    .line 1359
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1360
    sub-float v8, v5, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmiui/widget/NumberPicker;->Uw:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1361
    iget v9, p0, Lmiui/widget/NumberPicker;->Vg:I

    iget v10, p0, Lmiui/widget/NumberPicker;->Vh:I

    invoke-direct {p0, v8, v9, v10}, Lmiui/widget/NumberPicker;->a(FII)F

    move-result v9

    .line 1362
    iget-object v10, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1363
    iget-object v10, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    iget v11, p0, Lmiui/widget/NumberPicker;->Vk:I

    invoke-direct {p0, v8, v11, v2}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1364
    iget v10, p0, Lmiui/widget/NumberPicker;->Vh:I

    int-to-float v10, v10

    sub-float v10, v9, v10

    div-float/2addr v10, v13

    add-float/2addr v10, v3

    iget-object v11, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1365
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    .line 1366
    iget-object v10, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    iget v11, p0, Lmiui/widget/NumberPicker;->Vj:I

    const/4 v12, 0x1

    invoke-direct {p0, v8, v11, v12}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1367
    iget v8, p0, Lmiui/widget/NumberPicker;->Vh:I

    int-to-float v8, v8

    sub-float v8, v9, v8

    div-float/2addr v8, v13

    add-float/2addr v8, v3

    iget-object v9, p0, Lmiui/widget/NumberPicker;->Uv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1369
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Uw:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 1357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1371
    :cond_3
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 1372
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lmiui/widget/NumberPicker;->Vf:F

    div-float/2addr v0, v13

    sub-float v0, v4, v0

    iget v1, p0, Lmiui/widget/NumberPicker;->Ua:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    iget-object v2, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1375
    :goto_2
    iget v1, p0, Lmiui/widget/NumberPicker;->Vg:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v5, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Vi:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->Ub:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1376
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/NumberPicker;->Vd:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1372
    :cond_4
    iget v0, p0, Lmiui/widget/NumberPicker;->Vf:F

    div-float/2addr v0, v13

    add-float/2addr v0, v4

    iget v1, p0, Lmiui/widget/NumberPicker;->Ua:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1398
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1399
    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1400
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1401
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Uw:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1402
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Uw:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1403
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 733
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 778
    :goto_0
    return v0

    .line 736
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 737
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 778
    goto :goto_0

    .line 739
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    .line 740
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->UH:F

    iput v2, p0, Lmiui/widget/NumberPicker;->UJ:F

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->UI:J

    .line 743
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->UQ:Z

    .line 744
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->UR:Z

    .line 746
    iget v2, p0, Lmiui/widget/NumberPicker;->UH:F

    iget v3, p0, Lmiui/widget/NumberPicker;->US:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 747
    iget v2, p0, Lmiui/widget/NumberPicker;->Mg:I

    if-nez v2, :cond_2

    .line 748
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker$f;->ap(I)V

    .line 758
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 759
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 760
    iget-object v2, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 761
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->ak(I)V

    goto :goto_0

    .line 751
    :cond_3
    iget v2, p0, Lmiui/widget/NumberPicker;->UH:F

    iget v3, p0, Lmiui/widget/NumberPicker;->UT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 752
    iget v2, p0, Lmiui/widget/NumberPicker;->Mg:I

    if-nez v2, :cond_2

    .line 753
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker$f;->ap(I)V

    goto :goto_1

    .line 762
    :cond_4
    iget-object v2, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 763
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Uz:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 764
    iget-object v1, p0, Lmiui/widget/NumberPicker;->UB:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 765
    :cond_5
    iget v2, p0, Lmiui/widget/NumberPicker;->UH:F

    iget v3, p0, Lmiui/widget/NumberPicker;->US:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 766
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 768
    :cond_6
    iget v1, p0, Lmiui/widget/NumberPicker;->UH:F

    iget v2, p0, Lmiui/widget/NumberPicker;->UT:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 769
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 772
    :cond_7
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->UR:Z

    .line 773
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eI()V

    goto/16 :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 658
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_1

    .line 659
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v0

    .line 663
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    .line 666
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    .line 667
    iget-object v3, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 668
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 669
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 670
    add-int/2addr v2, v0

    .line 671
    add-int/2addr v3, v1

    .line 672
    iget-object v4, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/EditText;->layout(IIII)V

    .line 674
    if-eqz p1, :cond_0

    .line 676
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eE()V

    .line 677
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eF()V

    .line 678
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result v0

    iget v1, p0, Lmiui/widget/NumberPicker;->Ue:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lmiui/widget/NumberPicker;->UP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->US:I

    .line 680
    iget v0, p0, Lmiui/widget/NumberPicker;->US:I

    iget v1, p0, Lmiui/widget/NumberPicker;->UP:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Ue:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->UT:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 687
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_0

    .line 688
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 701
    :goto_0
    return-void

    .line 692
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->Ui:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 693
    iget v1, p0, Lmiui/widget/NumberPicker;->Ug:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 694
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 696
    iget v0, p0, Lmiui/widget/NumberPicker;->Uh:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiui/widget/NumberPicker;->j(III)I

    move-result v0

    .line 698
    iget v1, p0, Lmiui/widget/NumberPicker;->Uf:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lmiui/widget/NumberPicker;->j(III)I

    move-result v1

    .line 700
    invoke-virtual {p0, v0, v1}, Lmiui/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 783
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UO:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 852
    :goto_0
    return v0

    .line 786
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 787
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    .line 789
    :cond_2
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 791
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v1

    .line 852
    goto :goto_0

    .line 793
    :pswitch_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UQ:Z

    if-nez v0, :cond_3

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 797
    iget v3, p0, Lmiui/widget/NumberPicker;->Mg:I

    if-eq v3, v1, :cond_5

    .line 798
    iget v2, p0, Lmiui/widget/NumberPicker;->UH:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 799
    iget v3, p0, Lmiui/widget/NumberPicker;->fy:I

    if-le v2, v3, :cond_4

    .line 800
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eK()V

    .line 801
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->ak(I)V

    .line 808
    :cond_4
    :goto_2
    iput v0, p0, Lmiui/widget/NumberPicker;->UJ:F

    goto :goto_1

    .line 804
    :cond_5
    iget v3, p0, Lmiui/widget/NumberPicker;->UJ:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 805
    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 806
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 811
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eJ()V

    .line 812
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eH()V

    .line 813
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$f;->cancel()V

    .line 814
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    .line 815
    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/NumberPicker;->UM:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 816
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 817
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->UM:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 818
    int-to-float v0, v0

    iget v3, p0, Lmiui/widget/NumberPicker;->Vs:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 820
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->UL:I

    if-le v3, v4, :cond_7

    .line 821
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->fling(I)V

    .line 822
    invoke-direct {p0, v8}, Lmiui/widget/NumberPicker;->ak(I)V

    .line 848
    :goto_3
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->qC:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 824
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 825
    int-to-float v3, v0

    iget v4, p0, Lmiui/widget/NumberPicker;->UH:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/widget/NumberPicker;->UI:J

    sub-long/2addr v4, v6

    .line 827
    iget v6, p0, Lmiui/widget/NumberPicker;->fy:I

    if-gt v3, v6, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    .line 828
    iget-boolean v3, p0, Lmiui/widget/NumberPicker;->UR:Z

    if-eqz v3, :cond_9

    .line 829
    iput-boolean v2, p0, Lmiui/widget/NumberPicker;->UR:Z

    .line 846
    :cond_8
    :goto_4
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->ak(I)V

    goto :goto_3

    .line 831
    :cond_9
    iget v3, p0, Lmiui/widget/NumberPicker;->Uw:I

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    .line 833
    if-lez v0, :cond_a

    .line 834
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->u(Z)V

    .line 835
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$f;->aq(I)V

    goto :goto_4

    .line 837
    :cond_a
    if-gez v0, :cond_8

    .line 838
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->u(Z)V

    .line 839
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Va:Lmiui/widget/NumberPicker$f;

    invoke-virtual {v0, v8}, Lmiui/widget/NumberPicker$f;->aq(I)V

    goto :goto_4

    .line 844
    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eL()Z

    goto :goto_4

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 991
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Uu:[I

    .line 992
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->Um:I

    if-gt v1, v2, :cond_1

    .line 994
    iget v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Uy:I

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->Un:I

    if-lt v1, v2, :cond_2

    .line 999
    iget v0, p0, Lmiui/widget/NumberPicker;->Ux:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Uy:I

    goto :goto_0

    .line 1002
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    add-int/2addr v1, p2

    iput v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    .line 1003
    :cond_3
    :goto_1
    iget v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Ux:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->Uk:I

    if-le v1, v2, :cond_4

    .line 1004
    iget v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Uw:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    .line 1005
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->d([I)V

    .line 1006
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lmiui/widget/NumberPicker;->h(IZ)V

    .line 1007
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->Um:I

    if-gt v1, v2, :cond_3

    .line 1008
    iget v1, p0, Lmiui/widget/NumberPicker;->Ux:I

    iput v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    goto :goto_1

    .line 1011
    :cond_4
    :goto_2
    iget v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Ux:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->Uk:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1012
    iget v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Uw:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    .line 1013
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->c([I)V

    .line 1014
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lmiui/widget/NumberPicker;->h(IZ)V

    .line 1015
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->Un:I

    if-lt v1, v2, :cond_4

    .line 1016
    iget v1, p0, Lmiui/widget/NumberPicker;->Ux:I

    iput v1, p0, Lmiui/widget/NumberPicker;->Uy:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1312
    :goto_0
    return-void

    .line 1301
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    .line 1302
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ul:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1309
    :goto_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1310
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1311
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eC()V

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ud:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ur:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1065
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Ur:Lmiui/widget/NumberPicker$Formatter;

    .line 1066
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1067
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    :cond_1
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Vp:Ljava/lang/CharSequence;

    .line 1028
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1030
    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1320
    iput p1, p0, Lmiui/widget/NumberPicker;->Vs:F

    .line 1322
    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2

    .prologue
    .line 1261
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    if-ne v0, p1, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1264
    :cond_0
    if-gez p1, :cond_1

    .line 1265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->Un:I

    .line 1268
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    if-ge v0, v1, :cond_2

    .line 1269
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    .line 1271
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Uu:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1272
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1273
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1274
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1275
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eC()V

    .line 1276
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1271
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 2

    .prologue
    .line 1223
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    if-ne v0, p1, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1226
    :cond_0
    if-gez p1, :cond_1

    .line 1227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->Um:I

    .line 1230
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Uo:I

    if-le v0, v1, :cond_2

    .line 1231
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Uo:I

    .line 1233
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Uu:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1234
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1235
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eD()V

    .line 1236
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eG()Z

    .line 1237
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eC()V

    .line 1238
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1233
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    .prologue
    .line 1191
    iput-wide p1, p0, Lmiui/widget/NumberPicker;->Us:J

    .line 1192
    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Uq:Lmiui/widget/NumberPicker$OnScrollListener;

    .line 1048
    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Up:Lmiui/widget/NumberPicker$OnValueChangeListener;

    .line 1039
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->h(IZ)V

    .line 1100
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .prologue
    .line 1173
    iget v0, p0, Lmiui/widget/NumberPicker;->Un:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Uu:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1174
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->UN:Z

    if-eq p1, v0, :cond_1

    .line 1175
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->UN:Z

    .line 1177
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->eM()V

    .line 1178
    return-void

    .line 1173
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
