.class public Lmiui/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/ViewPager$LayoutParams;,
        Lmiui/view/ViewPager$d;,
        Lmiui/view/ViewPager$SavedState;,
        Lmiui/view/ViewPager$a;,
        Lmiui/view/ViewPager$c;,
        Lmiui/view/ViewPager$SimpleOnPageChangeListener;,
        Lmiui/view/ViewPager$OnPageChangeListener;,
        Lmiui/view/ViewPager$b;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final KV:Z = false

.field private static final KX:I = 0x3

.field private static final KZ:I = 0x19

.field private static final LL:I = 0x2

.field private static final La:I = 0xfa

.field private static final Lb:I = 0x10

.field private static final Lc:[I

.field private static final Ld:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmiui/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field static final Mf:F = 0.05f

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final vG:Landroid/view/animation/Interpolator;

.field private static final vn:I = 0x320


# instance fields
.field private LD:I

.field private LE:F

.field private LF:F

.field private LG:Z

.field private LH:I

.field private LJ:I

.field private LM:Z

.field private LN:J

.field private LO:Landroid/widget/EdgeEffect;

.field private LP:Landroid/widget/EdgeEffect;

.field private LQ:Z

.field private LW:Z

.field private LX:Z

.field private LZ:I

.field private final Le:Lmiui/view/ViewPager$b;

.field private final Lf:Landroid/graphics/Rect;

.field private Lg:Lmiui/view/PagerAdapter;

.field private Lh:I

.field private Li:I

.field private Lj:Landroid/os/Parcelable;

.field private Lk:Lmiui/view/ViewPager$d;

.field private Ll:I

.field private Lm:Landroid/graphics/drawable/Drawable;

.field private Ln:I

.field private Lo:I

.field private Lp:F

.field private Lq:F

.field private Lr:I

.field private Ls:I

.field private Lt:Z

.field private Lu:Z

.field private Lv:Z

.field private Lw:I

.field private Lx:Z

.field private Ly:Z

.field private Lz:I

.field private Ma:Lmiui/view/ViewPager$OnPageChangeListener;

.field private Mb:Lmiui/view/ViewPager$OnPageChangeListener;

.field private Mc:Lmiui/view/ViewPager$c;

.field Md:Z

.field Me:F

.field private Mg:I

.field private fy:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final nu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private qC:Landroid/view/VelocityTracker;

.field private qo:I

.field private qp:Z

.field private qs:I

.field private qt:I

.field private vB:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lmiui/view/ViewPager;->Lc:[I

    .line 98
    new-instance v0, Lmiui/view/ViewPager$1;

    invoke-direct {v0}, Lmiui/view/ViewPager$1;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->Ld:Ljava/util/Comparator;

    .line 105
    new-instance v0, Lmiui/view/ViewPager$2;

    invoke-direct {v0}, Lmiui/view/ViewPager$2;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->vG:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lmiui/view/ViewPager$b;

    invoke-direct {v0}, Lmiui/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->Le:Lmiui/view/ViewPager$b;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    .line 119
    iput v1, p0, Lmiui/view/ViewPager;->Li:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->Lj:Landroid/os/Parcelable;

    .line 132
    const v0, -0x800001

    iput v0, p0, Lmiui/view/ViewPager;->Lp:F

    .line 133
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/view/ViewPager;->Lq:F

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lmiui/view/ViewPager;->Lw:I

    .line 162
    iput v1, p0, Lmiui/view/ViewPager;->qo:I

    .line 189
    iput-boolean v3, p0, Lmiui/view/ViewPager;->LQ:Z

    .line 190
    iput-boolean v2, p0, Lmiui/view/ViewPager;->LW:Z

    .line 199
    iput-boolean v3, p0, Lmiui/view/ViewPager;->Md:Z

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager;->Me:F

    .line 221
    iput v2, p0, Lmiui/view/ViewPager;->Mg:I

    .line 297
    invoke-virtual {p0}, Lmiui/view/ViewPager;->du()V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lmiui/view/ViewPager$b;

    invoke-direct {v0}, Lmiui/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->Le:Lmiui/view/ViewPager$b;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    .line 119
    iput v1, p0, Lmiui/view/ViewPager;->Li:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->Lj:Landroid/os/Parcelable;

    .line 132
    const v0, -0x800001

    iput v0, p0, Lmiui/view/ViewPager;->Lp:F

    .line 133
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/view/ViewPager;->Lq:F

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lmiui/view/ViewPager;->Lw:I

    .line 162
    iput v1, p0, Lmiui/view/ViewPager;->qo:I

    .line 189
    iput-boolean v3, p0, Lmiui/view/ViewPager;->LQ:Z

    .line 190
    iput-boolean v2, p0, Lmiui/view/ViewPager;->LW:Z

    .line 199
    iput-boolean v3, p0, Lmiui/view/ViewPager;->Md:Z

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager;->Me:F

    .line 221
    iput v2, p0, Lmiui/view/ViewPager;->Mg:I

    .line 302
    invoke-virtual {p0}, Lmiui/view/ViewPager;->du()V

    .line 303
    return-void
.end method

.method private U(I)V
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lmiui/view/ViewPager;->Mg:I

    if-ne v0, p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iput p1, p0, Lmiui/view/ViewPager;->Mg:I

    .line 334
    iget-object v0, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 338
    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private a(IFII)I
    .locals 3

    .prologue
    .line 1981
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->LH:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->qs:I

    if-le v0, v1, :cond_2

    .line 1982
    if-lez p3, :cond_1

    .line 1987
    :goto_0
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1989
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$b;

    .line 1992
    iget v0, v0, Lmiui/view/ViewPager$b;->position:I

    iget v1, v1, Lmiui/view/ViewPager$b;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1995
    :cond_0
    return p1

    .line 1982
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1984
    :cond_2
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2370
    if-nez p1, :cond_2

    .line 2371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2373
    :goto_0
    if-nez p2, :cond_0

    .line 2374
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2392
    :goto_1
    return-object v0

    .line 2377
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2378
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2379
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2380
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2382
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2383
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2384
    check-cast v0, Landroid/view/ViewGroup;

    .line 2385
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2386
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2387
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2388
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2390
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2392
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2214
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2215
    iget v2, p0, Lmiui/view/ViewPager;->qo:I

    if-ne v1, v2, :cond_0

    .line 2218
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2219
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->qo:I

    .line 2221
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2225
    :cond_0
    return-void

    .line 2218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lmiui/view/ViewPager$b;ILmiui/view/ViewPager$b;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 948
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v7

    .line 949
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    .line 950
    if-lez v0, :cond_0

    iget v1, p0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 952
    :goto_0
    if-eqz p3, :cond_4

    .line 953
    iget v0, p3, Lmiui/view/ViewPager$b;->position:I

    .line 955
    iget v1, p1, Lmiui/view/ViewPager$b;->position:I

    if-ge v0, v1, :cond_2

    .line 958
    iget v1, p3, Lmiui/view/ViewPager$b;->Mj:F

    iget v2, p3, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    .line 959
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v4

    move v1, v0

    .line 960
    :goto_1
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 961
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 962
    :goto_2
    iget v5, v0, Lmiui/view/ViewPager$b;->position:I

    if-le v1, v5, :cond_e

    iget-object v5, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_e

    .line 963
    add-int/lit8 v3, v3, 0x1

    .line 964
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    goto :goto_2

    .line 950
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 966
    :goto_3
    iget v5, v0, Lmiui/view/ViewPager$b;->position:I

    if-ge v2, v5, :cond_1

    .line 969
    iget-object v5, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v5, v2}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 970
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_3

    .line 972
    :cond_1
    iput v1, v0, Lmiui/view/ViewPager$b;->Mj:F

    .line 973
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 960
    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 975
    :cond_2
    iget v1, p1, Lmiui/view/ViewPager$b;->position:I

    if-le v0, v1, :cond_4

    .line 976
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 978
    iget v1, p3, Lmiui/view/ViewPager$b;->Mj:F

    .line 979
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 980
    :goto_4
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    if-lt v1, v0, :cond_4

    if-ltz v3, :cond_4

    .line 981
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 982
    :goto_5
    iget v5, v0, Lmiui/view/ViewPager$b;->position:I

    if-ge v1, v5, :cond_d

    if-lez v3, :cond_d

    .line 983
    add-int/lit8 v3, v3, -0x1

    .line 984
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    goto :goto_5

    .line 986
    :goto_6
    iget v5, v0, Lmiui/view/ViewPager$b;->position:I

    if-le v2, v5, :cond_3

    .line 989
    iget-object v5, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v5, v2}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float v5, v1, v5

    .line 990
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v5

    goto :goto_6

    .line 992
    :cond_3
    iget v5, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 993
    iput v1, v0, Lmiui/view/ViewPager$b;->Mj:F

    .line 980
    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 999
    :cond_4
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1000
    iget v2, p1, Lmiui/view/ViewPager$b;->Mj:F

    .line 1001
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    add-int/lit8 v1, v0, -0x1

    .line 1002
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    if-nez v0, :cond_5

    iget v0, p1, Lmiui/view/ViewPager$b;->Mj:F

    :goto_7
    iput v0, p0, Lmiui/view/ViewPager;->Lp:F

    .line 1003
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_6

    iget v0, p1, Lmiui/view/ViewPager$b;->Mj:F

    iget v3, p1, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Lmiui/view/ViewPager;->Lq:F

    .line 1006
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_9

    .line 1007
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    move v3, v2

    .line 1008
    :goto_a
    iget v2, v0, Lmiui/view/ViewPager$b;->position:I

    if-le v1, v2, :cond_7

    .line 1009
    iget-object v9, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    .line 1002
    :cond_5
    const v0, -0x800001

    goto :goto_7

    .line 1003
    :cond_6
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1011
    :cond_7
    iget v2, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 1012
    iput v2, v0, Lmiui/view/ViewPager$b;->Mj:F

    .line 1013
    iget v0, v0, Lmiui/view/ViewPager$b;->position:I

    if-nez v0, :cond_8

    iput v2, p0, Lmiui/view/ViewPager;->Lp:F

    .line 1006
    :cond_8
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_9

    .line 1015
    :cond_9
    iget v0, p1, Lmiui/view/ViewPager$b;->Mj:F

    iget v1, p1, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1016
    iget v0, p1, Lmiui/view/ViewPager$b;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 1018
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_c

    .line 1019
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    move v3, v2

    .line 1020
    :goto_c
    iget v2, v0, Lmiui/view/ViewPager$b;->position:I

    if-ge v1, v2, :cond_a

    .line 1021
    iget-object v9, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    .line 1023
    :cond_a
    iget v2, v0, Lmiui/view/ViewPager$b;->position:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_b

    .line 1024
    iget v2, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Lmiui/view/ViewPager;->Lq:F

    .line 1026
    :cond_b
    iput v3, v0, Lmiui/view/ViewPager$b;->Mj:F

    .line 1027
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 1018
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_b

    .line 1030
    :cond_c
    iput-boolean v4, p0, Lmiui/view/ViewPager;->LW:Z

    .line 1031
    return-void

    :cond_d
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_6

    :cond_e
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_3
.end method

.method private b(F)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1885
    .line 1887
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1888
    iput p1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1890
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 1891
    add-float v5, v1, v0

    .line 1892
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v7

    .line 1894
    int-to-float v0, v7

    iget v1, p0, Lmiui/view/ViewPager;->Lp:F

    mul-float v4, v0, v1

    .line 1895
    int-to-float v0, v7

    iget v1, p0, Lmiui/view/ViewPager;->Lq:F

    mul-float v6, v0, v1

    .line 1899
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1900
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    iget-object v8, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$b;

    .line 1901
    iget v8, v0, Lmiui/view/ViewPager$b;->position:I

    if-eqz v8, :cond_5

    .line 1903
    iget v0, v0, Lmiui/view/ViewPager$b;->Mj:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 1905
    :goto_0
    iget v8, v1, Lmiui/view/ViewPager$b;->position:I

    iget-object v9, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v9}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 1907
    iget v1, v1, Lmiui/view/ViewPager$b;->Mj:F

    int-to-float v6, v7

    mul-float/2addr v1, v6

    move v6, v2

    .line 1910
    :goto_1
    cmpg-float v8, v5, v4

    if-gez v8, :cond_1

    .line 1911
    if-eqz v0, :cond_0

    .line 1912
    sub-float v0, v4, v5

    .line 1913
    iget-object v1, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v2, v3

    .line 1926
    :cond_0
    :goto_2
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1927
    float-to-int v0, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1928
    float-to-int v0, v4

    invoke-direct {p0, v0, v3}, Lmiui/view/ViewPager;->f(IZ)Z

    .line 1930
    return v2

    .line 1917
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 1918
    if-eqz v6, :cond_2

    .line 1919
    sub-float v0, v5, v1

    .line 1920
    iget-object v2, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v7

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v2, v3

    :cond_2
    move v4, v1

    .line 1923
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    move v6, v3

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private b(FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1609
    iget v0, p0, Lmiui/view/ViewPager;->LD:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->LD:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1288
    if-lez p2, :cond_1

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    add-int v0, p1, p3

    .line 1290
    add-int v1, p2, p4

    .line 1291
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1292
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1293
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1295
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1296
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1299
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->W(I)Lmiui/view/ViewPager$b;

    move-result-object v3

    .line 1300
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    iget v3, v3, Lmiui/view/ViewPager$b;->Mj:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->W(I)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_2

    iget v0, v0, Lmiui/view/ViewPager$b;->Mj:F

    iget v1, p0, Lmiui/view/ViewPager;->Lq:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1306
    :goto_1
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1307
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1308
    invoke-direct {p0}, Lmiui/view/ViewPager;->dy()V

    .line 1309
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1305
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dA()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2228
    iput-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    .line 2229
    iput-boolean v0, p0, Lmiui/view/ViewPager;->Lx:Z

    .line 2231
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2233
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 2235
    :cond_0
    return-void
.end method

.method static synthetic dE()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lmiui/view/ViewPager;->Lc:[I

    return-object v0
.end method

.method private dv()V
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 389
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 391
    iget-boolean v0, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->removeViewAt(I)V

    .line 393
    add-int/lit8 v1, v1, -0x1

    .line 388
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method private dy()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1582
    iget v0, p0, Lmiui/view/ViewPager;->Mg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 1583
    :goto_0
    if-eqz v0, :cond_2

    .line 1585
    invoke-direct {p0, v3}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1586
    iget-object v1, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1587
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1588
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1589
    iget-object v5, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1590
    iget-object v6, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1591
    if-ne v1, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1592
    :cond_0
    invoke-virtual {p0, v5, v6}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1594
    :cond_1
    invoke-direct {p0, v3}, Lmiui/view/ViewPager;->U(I)V

    .line 1596
    :cond_2
    iput-boolean v3, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 1597
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1598
    iget-boolean v5, v0, Lmiui/view/ViewPager$b;->Mi:Z

    if-eqz v5, :cond_6

    .line 1600
    iput-boolean v3, v0, Lmiui/view/ViewPager$b;->Mi:Z

    move v0, v2

    :goto_2
    move v1, v0

    .line 1602
    goto :goto_1

    :cond_3
    move v0, v3

    .line 1582
    goto :goto_0

    .line 1603
    :cond_4
    if-eqz v1, :cond_5

    .line 1604
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 1606
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private dz()Lmiui/view/ViewPager$b;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1938
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 1939
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 1940
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 1941
    :goto_1
    const/4 v5, -0x1

    .line 1944
    const/4 v4, 0x1

    .line 1946
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 1947
    :goto_2
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1948
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1950
    if-nez v5, :cond_6

    iget v10, v0, Lmiui/view/ViewPager$b;->position:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 1952
    iget-object v0, p0, Lmiui/view/ViewPager;->Le:Lmiui/view/ViewPager$b;

    .line 1953
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lmiui/view/ViewPager$b;->Mj:F

    .line 1954
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lmiui/view/ViewPager$b;->position:I

    .line 1955
    iget-object v6, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v7, v0, Lmiui/view/ViewPager$b;->position:I

    invoke-virtual {v6, v7}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    .line 1956
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 1958
    :goto_3
    iget v6, v2, Lmiui/view/ViewPager$b;->Mj:F

    .line 1961
    iget v7, v2, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 1962
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 1963
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 1976
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 1939
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1940
    goto :goto_1

    .line 1970
    :cond_5
    iget v5, v2, Lmiui/view/ViewPager$b;->position:I

    .line 1972
    iget v4, v2, Lmiui/view/ViewPager$b;->widthFactor:F

    .line 1947
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private f(IZ)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1458
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    iput-boolean v4, p0, Lmiui/view/ViewPager;->LX:Z

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v4}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    .line 1461
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LX:Z

    if-nez v0, :cond_7

    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_0
    invoke-direct {p0}, Lmiui/view/ViewPager;->dz()Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 1468
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 1469
    iget v1, p0, Lmiui/view/ViewPager;->Ll:I

    add-int v5, v2, v1

    .line 1470
    iget v1, p0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v1, v1

    int-to-float v6, v2

    div-float v6, v1, v6

    .line 1471
    iget v1, v0, Lmiui/view/ViewPager$b;->position:I

    .line 1472
    int-to-float v7, p1

    int-to-float v2, v2

    div-float v2, v7, v2

    iget v7, v0, Lmiui/view/ViewPager$b;->Mj:F

    sub-float/2addr v2, v7

    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v0, v6

    div-float v6, v2, v0

    .line 1474
    int-to-float v0, v5

    mul-float/2addr v0, v6

    float-to-int v5, v0

    .line 1477
    if-eqz p2, :cond_3

    .line 1480
    iget v0, p0, Lmiui/view/ViewPager;->Me:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    const v0, 0x3f0ccccd    # 0.55f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_4

    .line 1482
    add-int/lit8 v0, v1, 0x1

    move v2, v3

    .line 1487
    :goto_0
    iput v6, p0, Lmiui/view/ViewPager;->Me:F

    .line 1489
    if-eqz v2, :cond_3

    .line 1490
    if-gez v0, :cond_5

    move v0, v4

    .line 1496
    :cond_1
    :goto_1
    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    if-eq v0, v2, :cond_3

    .line 1497
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->V(I)V

    .line 1498
    iget-object v2, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 1499
    iget-object v2, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, v0}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1501
    :cond_2
    iget-object v2, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 1502
    iget-object v2, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, v0}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1508
    :cond_3
    iput-boolean v4, p0, Lmiui/view/ViewPager;->LX:Z

    .line 1509
    invoke-virtual {p0, v1, v6, v5}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    .line 1510
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LX:Z

    if-nez v0, :cond_6

    .line 1511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_4
    iget v0, p0, Lmiui/view/ViewPager;->Me:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    const v0, 0x3ee66666    # 0.45f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_8

    move v0, v1

    move v2, v3

    .line 1485
    goto :goto_0

    .line 1492
    :cond_5
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1493
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move v4, v3

    .line 1515
    :cond_7
    return v4

    :cond_8
    move v0, v1

    move v2, v4

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Lu:Z

    if-eq v0, p1, :cond_0

    .line 2239
    iput-boolean p1, p0, Lmiui/view/ViewPager;->Lu:Z

    .line 2250
    :cond_0
    return-void
.end method


# virtual methods
.method V(I)V
    .locals 14

    .prologue
    .line 795
    const/4 v0, 0x0

    .line 796
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    if-eq v1, p1, :cond_1e

    .line 797
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->W(I)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 798
    iput p1, p0, Lmiui/view/ViewPager;->Lh:I

    move-object v1, v0

    .line 801
    :goto_0
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 945
    :cond_0
    return-void

    .line 809
    :cond_1
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Lv:Z

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 823
    iget v0, p0, Lmiui/view/ViewPager;->Lw:I

    .line 824
    const/4 v2, 0x0

    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 825
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v8

    .line 826
    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 830
    const/4 v3, 0x0

    .line 831
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1d

    .line 832
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 833
    iget v4, v0, Lmiui/view/ViewPager$b;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Lh:I

    if-lt v4, v5, :cond_6

    .line 834
    iget v4, v0, Lmiui/view/ViewPager$b;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v4, v5, :cond_1d

    .line 839
    :goto_2
    if-nez v0, :cond_1c

    if-lez v8, :cond_1c

    .line 840
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0, v2}, Lmiui/view/ViewPager;->h(II)Lmiui/view/ViewPager$b;

    move-result-object v0

    move-object v6, v0

    .line 846
    :goto_3
    if-eqz v6, :cond_4

    .line 847
    const/4 v5, 0x0

    .line 848
    add-int/lit8 v4, v2, -0x1

    .line 849
    if-ltz v4, :cond_7

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 850
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    iget v10, v6, Lmiui/view/ViewPager$b;->widthFactor:F

    sub-float v10, v3, v10

    .line 851
    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_2

    .line 852
    cmpl-float v11, v3, v10

    if-ltz v11, :cond_b

    if-ge v5, v7, :cond_b

    .line 853
    if-nez v0, :cond_8

    .line 875
    :cond_2
    iget v3, v6, Lmiui/view/ViewPager$b;->widthFactor:F

    .line 876
    add-int/lit8 v5, v4, 0x1

    .line 877
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 878
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_f

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 879
    :goto_6
    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_7
    if-ge v5, v8, :cond_3

    .line 880
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_12

    if-le v5, v9, :cond_12

    .line 881
    if-nez v0, :cond_10

    .line 902
    :cond_3
    invoke-direct {p0, v6, v4, v1}, Lmiui/view/ViewPager;->a(Lmiui/view/ViewPager$b;ILmiui/view/ViewPager$b;)V

    .line 912
    :cond_4
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    if-eqz v6, :cond_16

    iget-object v0, v6, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v1, p0, v2, v0}, Lmiui/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 914
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 917
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v2

    .line 918
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_17

    .line 919
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 920
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 921
    iget-boolean v4, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_5

    iget v4, v0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 923
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v3

    .line 924
    if-eqz v3, :cond_5

    .line 925
    iget v3, v3, Lmiui/view/ViewPager$b;->widthFactor:F

    iput v3, v0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 918
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 831
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 849
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 856
    :cond_8
    iget v11, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v5, v11, :cond_9

    iget-boolean v11, v0, Lmiui/view/ViewPager$b;->Mi:Z

    if-nez v11, :cond_9

    .line 857
    iget-object v11, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 858
    iget-object v11, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v0, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 859
    add-int/lit8 v2, v2, -0x1

    .line 860
    add-int/lit8 v4, v4, -0x1

    .line 861
    if-ltz v2, :cond_a

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 851
    :cond_9
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    .line 861
    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    .line 863
    :cond_b
    if-eqz v0, :cond_d

    iget v11, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v5, v11, :cond_d

    .line 864
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v3, v0

    .line 865
    add-int/lit8 v2, v2, -0x1

    .line 866
    if-ltz v2, :cond_c

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 868
    :cond_d
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Lmiui/view/ViewPager;->h(II)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 869
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v3, v0

    .line 870
    add-int/lit8 v4, v4, 0x1

    .line 871
    if-ltz v2, :cond_e

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    .line 878
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 884
    :cond_10
    iget v7, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v5, v7, :cond_1b

    iget-boolean v7, v0, Lmiui/view/ViewPager$b;->Mi:Z

    if-nez v7, :cond_1b

    .line 885
    iget-object v7, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 886
    iget-object v7, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v0, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 887
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    :goto_b
    move v12, v2

    move-object v2, v0

    move v0, v12

    .line 879
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_7

    .line 887
    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    .line 889
    :cond_12
    if-eqz v0, :cond_14

    iget v7, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v5, v7, :cond_14

    .line 890
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v2, v0

    .line 891
    add-int/lit8 v3, v3, 0x1

    .line 892
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    :goto_d
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    .line 894
    :cond_14
    invoke-virtual {p0, v5, v3}, Lmiui/view/ViewPager;->h(II)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 895
    add-int/lit8 v3, v3, 0x1

    .line 896
    iget v0, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v2, v0

    .line 897
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    :goto_e
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    .line 912
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 930
    :cond_17
    invoke-virtual {p0}, Lmiui/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->i(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 933
    :goto_f
    if-eqz v0, :cond_18

    iget v0, v0, Lmiui/view/ViewPager$b;->position:I

    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    if-eq v0, v1, :cond_0

    .line 934
    :cond_18
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 935
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 936
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v2

    .line 937
    if-eqz v2, :cond_19

    iget v2, v2, Lmiui/view/ViewPager$b;->position:I

    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v2, v3, :cond_19

    .line 938
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 932
    :cond_1a
    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_c

    :cond_1c
    move-object v6, v0

    goto/16 :goto_3

    :cond_1d
    move-object v0, v3

    goto/16 :goto_2

    :cond_1e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method W(I)Lmiui/view/ViewPager$b;
    .locals 3

    .prologue
    .line 1157
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1158
    iget v2, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v2, p1, :cond_0

    .line 1162
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)F
    .locals 4

    .prologue
    .line 625
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 626
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 627
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(IZZ)V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 440
    return-void
.end method

.method a(IZZI)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 444
    :cond_0
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 452
    :cond_3
    if-gez p1, :cond_6

    move p1, v1

    .line 457
    :cond_4
    :goto_1
    iget v0, p0, Lmiui/view/ViewPager;->Lw:I

    .line 458
    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_5

    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    sub-int v0, v3, v0

    if-ge p1, v0, :cond_7

    .line 462
    :cond_5
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 463
    iput-boolean v2, v0, Lmiui/view/ViewPager$b;->Mi:Z

    goto :goto_2

    .line 454
    :cond_6
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 455
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 466
    :cond_7
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    if-eq v0, p1, :cond_9

    move v0, v2

    .line 467
    :goto_3
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->V(I)V

    .line 468
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->W(I)Lmiui/view/ViewPager$b;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_d

    .line 471
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v3

    .line 472
    int-to-float v3, v3

    iget v4, p0, Lmiui/view/ViewPager;->Lp:F

    iget v2, v2, Lmiui/view/ViewPager$b;->Mj:F

    iget v5, p0, Lmiui/view/ViewPager;->Lq:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 475
    :goto_4
    if-eqz p2, :cond_a

    .line 476
    invoke-virtual {p0, v2, v1, p4}, Lmiui/view/ViewPager;->g(III)V

    .line 477
    if-eqz v0, :cond_8

    iget-object v1, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_8

    .line 478
    iget-object v1, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 480
    :cond_8
    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 466
    goto :goto_3

    .line 484
    :cond_a
    if-eqz v0, :cond_b

    iget-object v3, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_b

    .line 485
    iget-object v3, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 487
    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    .line 488
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 490
    :cond_c
    invoke-direct {p0}, Lmiui/view/ViewPager;->dy()V

    .line 491
    invoke-virtual {p0, v2, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto :goto_4
.end method

.method a(Lmiui/view/ViewPager$c;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lmiui/view/ViewPager;->Mc:Lmiui/view/ViewPager$c;

    .line 409
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2416
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2418
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2420
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    .line 2421
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2422
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2423
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2424
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v4

    .line 2425
    if-eqz v4, :cond_0

    iget v4, v4, Lmiui/view/ViewPager$b;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v4, v5, :cond_0

    .line 2426
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2436
    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2442
    :cond_2
    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2453
    :cond_3
    :goto_1
    return-void

    .line 2445
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lmiui/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2449
    :cond_5
    if-eqz p1, :cond_3

    .line 2450
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2463
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2464
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2465
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2466
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v2

    .line 2467
    if-eqz v2, :cond_0

    iget v2, v2, Lmiui/view/ViewPager$b;->position:I

    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v2, v3, :cond_0

    .line 2468
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2463
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2472
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1112
    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1113
    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1115
    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 1116
    iget-boolean v2, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v3, p1, Lmiui/view/ViewPager$a;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1117
    iget-boolean v2, p0, Lmiui/view/ViewPager;->Lt:Z

    if-eqz v2, :cond_1

    .line 1118
    iget-boolean v2, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1122
    invoke-virtual {p0, p1, p2, v1}, Lmiui/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1134
    :goto_1
    return-void

    .line 1124
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 2327
    invoke-virtual {p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2328
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2330
    :cond_0
    const/4 v1, 0x0

    .line 2332
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2334
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 2335
    if-ne p1, v3, :cond_3

    .line 2338
    iget-object v1, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2339
    iget-object v3, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2340
    if-eqz v0, :cond_2

    if-lt v1, v3, :cond_2

    .line 2341
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dB()Z

    move-result v0

    .line 2363
    :goto_0
    if-eqz v0, :cond_1

    .line 2364
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->playSoundEffect(I)V

    .line 2366
    :cond_1
    return v0

    .line 2343
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2345
    :cond_3
    if-ne p1, v4, :cond_9

    .line 2348
    iget-object v1, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2349
    iget-object v3, p0, Lmiui/view/ViewPager;->Lf:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2350
    if-eqz v0, :cond_4

    if-gt v1, v3, :cond_4

    .line 2351
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dC()Z

    move-result v0

    goto :goto_0

    .line 2353
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2356
    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 2358
    :cond_6
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dB()Z

    move-result v0

    goto :goto_0

    .line 2359
    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 2361
    :cond_8
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dC()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2103
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v0, :cond_0

    .line 2119
    :goto_0
    return v4

    .line 2106
    :cond_0
    iput-boolean v8, p0, Lmiui/view/ViewPager;->LM:Z

    .line 2107
    invoke-direct {p0, v8}, Lmiui/view/ViewPager;->U(I)V

    .line 2108
    iput v5, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Lmiui/view/ViewPager;->LE:F

    .line 2109
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 2110
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 2114
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2115
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2116
    iget-object v3, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2117
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 2118
    iput-wide v0, p0, Lmiui/view/ViewPager;->LN:J

    move v4, v8

    .line 2119
    goto :goto_0

    .line 2112
    :cond_1
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2264
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2265
    check-cast v6, Landroid/view/ViewGroup;

    .line 2266
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2267
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2268
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2270
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2273
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2274
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    :cond_0
    :goto_1
    return v2

    .line 2270
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2283
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2541
    instance-of v0, p1, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1433
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1435
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1436
    iget-object v2, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1437
    iget-object v3, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1439
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1440
    :cond_0
    invoke-virtual {p0, v2, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1441
    invoke-direct {p0, v2, v4}, Lmiui/view/ViewPager;->f(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1443
    invoke-virtual {p0, v4, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1448
    :cond_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1454
    :goto_0
    return-void

    .line 1453
    :cond_2
    invoke-direct {p0}, Lmiui/view/ViewPager;->dy()V

    goto :goto_0
.end method

.method dB()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2396
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    if-lez v1, :cond_0

    .line 2397
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 2400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dC()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2404
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2405
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 2408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dD()I
    .locals 2

    .prologue
    .line 2596
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 2597
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2598
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->getSplitActionBarHeight(Z)I

    move-result v0

    .line 2603
    :goto_0
    return v0

    .line 2600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2289
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2514
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2515
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2516
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2517
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2518
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v4

    .line 2519
    if-eqz v4, :cond_1

    iget v4, v4, Lmiui/view/ViewPager$b;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2521
    const/4 v0, 0x1

    .line 2526
    :cond_0
    return v0

    .line 2515
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2001
    const/4 v0, 0x0

    .line 2003
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2004
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2007
    :cond_0
    iget-object v1, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2008
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2009
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2010
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2012
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2013
    neg-int v3, v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/view/ViewPager;->Lp:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2014
    iget-object v3, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2015
    iget-object v0, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 2016
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2019
    :cond_1
    iget-object v1, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2021
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2022
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2024
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2025
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lmiui/view/ViewPager;->Lq:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2026
    iget-object v4, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2027
    iget-object v2, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2028
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2035
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2037
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 2039
    :cond_3
    return-void

    .line 2031
    :cond_4
    iget-object v1, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2032
    iget-object v1, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 614
    iget-object v0, p0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    .line 615
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 618
    :cond_0
    return-void
.end method

.method du()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    .line 307
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setDescendantFocusability(I)V

    .line 308
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->setFocusable(Z)V

    .line 309
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lmiui/view/ViewPager;->vG:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    .line 311
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lmiui/view/ViewPager;->fy:I

    .line 313
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/view/ViewPager;->qs:I

    .line 314
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->qt:I

    .line 315
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    .line 316
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 319
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/ViewPager;->LH:I

    .line 320
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/ViewPager;->LJ:I

    .line 321
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/view/ViewPager;->Lz:I

    .line 323
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->setImportantForAccessibility(I)V

    .line 326
    :cond_0
    return-void
.end method

.method dw()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lmiui/view/ViewPager;->Lw:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v3}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 707
    :goto_0
    iget v3, p0, Lmiui/view/ViewPager;->Lh:I

    move v4, v2

    move v5, v2

    move v6, v3

    move v7, v0

    move v3, v2

    .line 711
    :goto_1
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 712
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 713
    iget-object v8, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v9, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lmiui/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 715
    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 717
    iget-boolean v8, v0, Lmiui/view/ViewPager$b;->cQ:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v10, v0, Lmiui/view/ViewPager$b;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_e

    .line 718
    iget-boolean v5, v0, Lmiui/view/ViewPager$b;->cQ:Z

    if-nez v5, :cond_1

    move v5, v1

    :goto_2
    iput-boolean v5, v0, Lmiui/view/ViewPager$b;->cQ:Z

    move v0, v3

    move v5, v6

    move v3, v4

    move v6, v7

    move v4, v1

    .line 711
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 705
    goto :goto_0

    :cond_1
    move v5, v2

    .line 718
    goto :goto_2

    .line 725
    :cond_2
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 726
    iget-object v7, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 727
    add-int/lit8 v3, v3, -0x1

    .line 729
    if-nez v4, :cond_3

    .line 730
    iget-object v4, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v4, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 734
    :cond_3
    iget-object v7, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v8, v0, Lmiui/view/ViewPager$b;->position:I

    iget-object v9, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 737
    iget v7, p0, Lmiui/view/ViewPager;->Lh:I

    iget v0, v0, Lmiui/view/ViewPager$b;->position:I

    if-ne v7, v0, :cond_f

    .line 739
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v6, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    .line 740
    goto :goto_3

    .line 745
    :cond_4
    iget v9, v0, Lmiui/view/ViewPager$b;->position:I

    if-eq v9, v8, :cond_6

    .line 746
    iget v7, v0, Lmiui/view/ViewPager$b;->position:I

    iget v9, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v7, v9, :cond_5

    move v6, v8

    .line 751
    :cond_5
    iput v8, v0, Lmiui/view/ViewPager$b;->position:I

    move v7, v1

    .line 756
    :cond_6
    iget-boolean v8, v0, Lmiui/view/ViewPager$b;->cQ:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v10, v0, Lmiui/view/ViewPager$b;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_e

    .line 757
    iget-boolean v5, v0, Lmiui/view/ViewPager$b;->cQ:Z

    if-nez v5, :cond_7

    move v5, v1

    :goto_4
    iput-boolean v5, v0, Lmiui/view/ViewPager$b;->cQ:Z

    move v0, v3

    move v5, v6

    move v3, v4

    move v6, v7

    move v4, v1

    .line 758
    goto :goto_3

    :cond_7
    move v5, v2

    .line 757
    goto :goto_4

    .line 762
    :cond_8
    if-eqz v4, :cond_9

    .line 763
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 766
    :cond_9
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    sget-object v3, Lmiui/view/ViewPager;->Ld:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    if-eqz v7, :cond_d

    .line 770
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 771
    :goto_5
    if-ge v3, v4, :cond_b

    .line 772
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 774
    iget-boolean v5, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_a

    .line 775
    const/4 v5, 0x0

    iput v5, v0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 771
    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 779
    :cond_b
    invoke-virtual {p0, v6, v2, v1}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 780
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 785
    :goto_6
    if-eqz v2, :cond_c

    .line 786
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 788
    :cond_c
    return-void

    :cond_d
    move v2, v5

    goto :goto_6

    :cond_e
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_3

    :cond_f
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    goto/16 :goto_3
.end method

.method dx()V
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->V(I)V

    .line 792
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2129
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LM:Z

    if-nez v0, :cond_0

    .line 2130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2133
    :cond_0
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 2134
    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/view/ViewPager;->qt:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2135
    iget v1, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2136
    iput-boolean v5, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 2137
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 2138
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2139
    invoke-direct {p0}, Lmiui/view/ViewPager;->dz()Lmiui/view/ViewPager$b;

    move-result-object v3

    .line 2140
    iget v4, v3, Lmiui/view/ViewPager$b;->position:I

    .line 2141
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v3, Lmiui/view/ViewPager$b;->Mj:F

    sub-float/2addr v1, v2

    iget v2, v3, Lmiui/view/ViewPager$b;->widthFactor:F

    div-float/2addr v1, v2

    .line 2142
    iget v2, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iget v3, p0, Lmiui/view/ViewPager;->LE:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2143
    invoke-direct {p0, v4, v1, v0, v2}, Lmiui/view/ViewPager;->a(IFII)I

    move-result v1

    .line 2145
    invoke-virtual {p0, v1, v5, v5, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 2146
    invoke-direct {p0}, Lmiui/view/ViewPager;->dA()V

    .line 2148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->LM:Z

    .line 2149
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2301
    const/4 v0, 0x0

    .line 2302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2323
    :cond_0
    :goto_0
    return v0

    .line 2305
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2308
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2311
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2315
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2316
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2303
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2159
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LM:Z

    if-nez v0, :cond_0

    .line 2160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2163
    :cond_0
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2165
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 2166
    sub-float v3, v0, p1

    .line 2167
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v5

    .line 2169
    int-to-float v0, v5

    iget v1, p0, Lmiui/view/ViewPager;->Lp:F

    mul-float v2, v0, v1

    .line 2170
    int-to-float v0, v5

    iget v1, p0, Lmiui/view/ViewPager;->Lq:F

    mul-float v4, v0, v1

    .line 2172
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 2173
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    iget-object v6, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$b;

    .line 2174
    iget v6, v0, Lmiui/view/ViewPager$b;->position:I

    if-eqz v6, :cond_4

    .line 2175
    iget v0, v0, Lmiui/view/ViewPager$b;->Mj:F

    int-to-float v2, v5

    mul-float/2addr v0, v2

    .line 2177
    :goto_0
    iget v2, v1, Lmiui/view/ViewPager$b;->position:I

    iget-object v6, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_3

    .line 2178
    iget v1, v1, Lmiui/view/ViewPager$b;->Mj:F

    int-to-float v2, v5

    mul-float/2addr v1, v2

    .line 2181
    :goto_1
    cmpg-float v2, v3, v0

    if-gez v2, :cond_1

    .line 2187
    :goto_2
    iget v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2188
    float-to-int v1, v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 2189
    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/view/ViewPager;->f(IZ)Z

    .line 2192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2193
    iget-wide v0, p0, Lmiui/view/ViewPager;->LN:J

    const/4 v4, 0x2

    iget v5, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2195
    iget-object v1, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2196
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2197
    return-void

    .line 2183
    :cond_1
    cmpl-float v0, v3, v1

    if-lez v0, :cond_2

    move v0, v1

    .line 2184
    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method g(III)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 648
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 650
    invoke-direct {p0, v5}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 686
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    .line 654
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v2

    .line 655
    sub-int v3, p1, v1

    .line 656
    sub-int v4, p2, v2

    .line 657
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 658
    invoke-direct {p0}, Lmiui/view/ViewPager;->dy()V

    .line 659
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 660
    invoke-direct {p0, v5}, Lmiui/view/ViewPager;->U(I)V

    goto :goto_0

    .line 664
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 665
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->U(I)V

    .line 667
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    .line 668
    div-int/lit8 v5, v0, 0x2

    .line 669
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 670
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Lmiui/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 674
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 675
    if-lez v6, :cond_2

    .line 676
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 682
    :goto_1
    const/16 v5, 0x320

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 684
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 685
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 678
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v6, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {v5, v6}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 679
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 680
    add-float/2addr v0, v8

    const/high16 v5, 0x437a0000    # 250.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2531
    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2546
    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2536
    invoke-virtual {p0}, Lmiui/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lmiui/view/PagerAdapter;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lmiui/view/ViewPager;->Lw:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lmiui/view/ViewPager;->Ll:I

    return v0
.end method

.method h(II)Lmiui/view/ViewPager$b;
    .locals 2

    .prologue
    .line 689
    new-instance v0, Lmiui/view/ViewPager$b;

    invoke-direct {v0}, Lmiui/view/ViewPager$b;-><init>()V

    .line 690
    iput p1, v0, Lmiui/view/ViewPager$b;->position:I

    .line 691
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lmiui/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lmiui/view/ViewPager$b;->widthFactor:F

    .line 693
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v1

    iput-boolean v1, v0, Lmiui/view/ViewPager$b;->cQ:Z

    .line 694
    if-ltz p2, :cond_0

    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 695
    :cond_0
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :goto_0
    return-object v0

    .line 697
    :cond_1
    iget-object v1, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method h(Landroid/view/View;)Lmiui/view/ViewPager$b;
    .locals 4

    .prologue
    .line 1137
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 1138
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v3, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i(Landroid/view/View;)Lmiui/view/ViewPager$b;
    .locals 2

    .prologue
    .line 1147
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1148
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    .line 1149
    const/4 v0, 0x0

    .line 1153
    :goto_1
    return-object v0

    .line 1151
    :cond_0
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v0

    goto :goto_1
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2209
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LM:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1167
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->LQ:Z

    .line 1169
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2043
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2046
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/view/ViewPager;->Ll:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_2

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2048
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v7

    .line 2050
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2051
    const/4 v5, 0x0

    .line 2052
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$b;

    .line 2053
    iget v4, v1, Lmiui/view/ViewPager$b;->Mj:F

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2055
    iget v3, v1, Lmiui/view/ViewPager$b;->position:I

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$b;

    iget v10, v2, Lmiui/view/ViewPager$b;->position:I

    move v2, v5

    move v5, v3

    .line 2057
    :goto_0
    if-ge v5, v10, :cond_2

    .line 2058
    :goto_1
    iget v3, v1, Lmiui/view/ViewPager$b;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2059
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$b;

    goto :goto_1

    .line 2063
    :cond_0
    iget v3, v1, Lmiui/view/ViewPager$b;->position:I

    if-ne v5, v3, :cond_3

    .line 2064
    iget v3, v1, Lmiui/view/ViewPager$b;->Mj:F

    iget v4, v1, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2065
    iget v4, v1, Lmiui/view/ViewPager$b;->Mj:F

    iget v11, v1, Lmiui/view/ViewPager$b;->widthFactor:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2072
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2073
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/view/ViewPager;->Ln:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/view/ViewPager;->Ll:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/view/ViewPager;->Lo:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2078
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    .line 2083
    :cond_2
    return-void

    .line 2067
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v3, v5}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2068
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2069
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2057
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2552
    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2553
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2557
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2558
    const-class v1, Lmiui/view/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2559
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2560
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    if-ltz v0, :cond_0

    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2561
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2563
    :cond_0
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2564
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2566
    :cond_1
    return-void

    .line 2559
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1615
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Md:Z

    if-nez v0, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v2

    .line 1625
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1628
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v6, :cond_3

    .line 1631
    :cond_2
    iput-boolean v2, p0, Lmiui/view/ViewPager;->qp:Z

    .line 1632
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Lx:Z

    .line 1633
    iput v3, p0, Lmiui/view/ViewPager;->qo:I

    .line 1634
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1636
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1643
    :cond_3
    if-eqz v0, :cond_5

    .line 1644
    iget-boolean v1, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v1, :cond_4

    move v2, v6

    .line 1646
    goto :goto_0

    .line 1648
    :cond_4
    iget-boolean v1, p0, Lmiui/view/ViewPager;->Lx:Z

    if-nez v1, :cond_0

    .line 1654
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 1754
    :cond_6
    :goto_1
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1755
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 1757
    :cond_7
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1763
    iget-boolean v2, p0, Lmiui/view/ViewPager;->qp:Z

    goto :goto_0

    .line 1665
    :sswitch_0
    iget v0, p0, Lmiui/view/ViewPager;->qo:I

    .line 1666
    if-eq v0, v3, :cond_6

    .line 1671
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1674
    if-ltz v0, :cond_6

    .line 1678
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1679
    iget v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v8, v7, v1

    .line 1680
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1681
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1682
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1685
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_8

    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lmiui/view/ViewPager;->b(FF)Z

    move-result v0

    if-nez v0, :cond_8

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1688
    iput v7, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v7, p0, Lmiui/view/ViewPager;->LE:F

    .line 1689
    iput v10, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    .line 1690
    iput-boolean v6, p0, Lmiui/view/ViewPager;->Lx:Z

    goto/16 :goto_0

    .line 1693
    :cond_8
    iget v0, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_b

    cmpl-float v0, v9, v11

    if-lez v0, :cond_b

    .line 1695
    iput-boolean v6, p0, Lmiui/view/ViewPager;->qp:Z

    .line 1696
    invoke-direct {p0, v6}, Lmiui/view/ViewPager;->U(I)V

    .line 1697
    cmpl-float v0, v8, v12

    if-lez v0, :cond_a

    iget v0, p0, Lmiui/view/ViewPager;->LE:F

    iget v1, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1699
    invoke-direct {p0, v6}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1710
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v0, :cond_6

    .line 1712
    invoke-direct {p0, v7}, Lmiui/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1713
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1697
    :cond_a
    iget v0, p0, Lmiui/view/ViewPager;->LE:F

    iget v1, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1701
    :cond_b
    iget v0, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9

    .line 1707
    iput-boolean v6, p0, Lmiui/view/ViewPager;->Lx:Z

    goto :goto_3

    .line 1724
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->LE:F

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    .line 1726
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->qo:I

    .line 1727
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Lx:Z

    .line 1729
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1730
    iget v0, p0, Lmiui/view/ViewPager;->Mg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->LJ:I

    if-le v0, v1, :cond_c

    .line 1733
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1734
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 1735
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 1736
    iput-boolean v6, p0, Lmiui/view/ViewPager;->qp:Z

    .line 1737
    invoke-direct {p0, v6}, Lmiui/view/ViewPager;->U(I)V

    goto/16 :goto_1

    .line 1739
    :cond_c
    invoke-direct {p0}, Lmiui/view/ViewPager;->dy()V

    .line 1740
    iput-boolean v2, p0, Lmiui/view/ViewPager;->qp:Z

    goto/16 :goto_1

    .line 1750
    :sswitch_2
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1654
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    .prologue
    .line 1316
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->Lt:Z

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dx()V

    .line 1318
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->Lt:Z

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1321
    sub-int v10, p4, p2

    .line 1322
    sub-int v11, p5, p3

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1329
    const/4 v4, 0x0

    .line 1333
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1334
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1335
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_6

    .line 1336
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$LayoutParams;

    .line 1339
    iget-boolean v7, v1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_6

    .line 1340
    iget v7, v1, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v14

    invoke-static {v7, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    .line 1342
    iget v1, v1, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1343
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1360
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 1377
    :goto_2
    add-int/2addr v7, v12

    .line 1378
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1381
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1333
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1349
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1350
    goto :goto_1

    .line 1352
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1354
    goto :goto_1

    .line 1356
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1357
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1366
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v17, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v17

    .line 1367
    goto :goto_2

    .line 1369
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 1371
    goto :goto_2

    .line 1373
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1374
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_2

    .line 1387
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v9, :cond_5

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1389
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_4

    .line 1390
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$LayoutParams;

    .line 1392
    iget-boolean v12, v1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1393
    int-to-float v13, v10

    iget v14, v12, Lmiui/view/ViewPager$b;->Mj:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 1394
    add-int/2addr v13, v6

    .line 1395
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmiui/view/ViewPager;->LG:Z

    if-nez v14, :cond_1

    iget-boolean v14, v1, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_3

    .line 1398
    :cond_1
    const/4 v14, 0x0

    iput-boolean v14, v1, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1399
    sub-int v14, v10, v6

    sub-int/2addr v14, v5

    int-to-float v14, v14

    iget v1, v1, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v14

    float-to-int v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1403
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->LG:Z

    .line 1406
    const/4 v1, 0x0

    .line 1407
    iget-boolean v12, v12, Lmiui/view/ViewPager$b;->cQ:Z

    if-eqz v12, :cond_2

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dD()I

    move-result v1

    .line 1411
    :cond_2
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    int-to-float v12, v12

    int-to-float v1, v1

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/view/ViewPager;->LF:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v1, v15

    sub-float v1, v12, v1

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1414
    invoke-virtual {v8, v14, v1}, Landroid/view/View;->measure(II)V

    .line 1419
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v13, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1387
    :cond_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 1425
    :cond_5
    move-object/from16 v0, p0

    iput v2, v0, Lmiui/view/ViewPager;->Ln:I

    .line 1426
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/view/ViewPager;->Lo:I

    .line 1427
    move-object/from16 v0, p0

    iput v4, v0, Lmiui/view/ViewPager;->LZ:I

    .line 1428
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->LQ:Z

    .line 1429
    return-void

    :cond_6
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1178
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->setMeasuredDimension(II)V

    .line 1181
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1182
    div-int/lit8 v1, v0, 0xa

    .line 1183
    iget v2, p0, Lmiui/view/ViewPager;->Lz:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->LD:I

    .line 1186
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1187
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1194
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1195
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1196
    invoke-virtual {p0, v8}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1197
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1198
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 1199
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_3

    .line 1200
    iget v1, v0, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v6, v1, 0x7

    .line 1202
    iget v1, v0, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v1, 0x70

    .line 1203
    const/high16 v2, -0x80000000

    .line 1204
    const/high16 v1, -0x80000000

    .line 1205
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1206
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1208
    :goto_2
    if-eqz v7, :cond_6

    .line 1209
    const/high16 v2, 0x40000000    # 2.0f

    .line 1217
    :cond_2
    :goto_3
    iget v4, v0, Lmiui/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1218
    const/high16 v4, 0x40000000    # 2.0f

    .line 1219
    iget v2, v0, Lmiui/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1220
    iget v2, v0, Lmiui/view/ViewPager$LayoutParams;->width:I

    .line 1223
    :goto_4
    iget v11, v0, Lmiui/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1224
    const/high16 v1, 0x40000000    # 2.0f

    .line 1225
    iget v11, v0, Lmiui/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1226
    iget v0, v0, Lmiui/view/ViewPager$LayoutParams;->height:I

    .line 1229
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1230
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1231
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1233
    if-eqz v7, :cond_7

    .line 1234
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1195
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1205
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1206
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1210
    :cond_6
    if-eqz v6, :cond_2

    .line 1211
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    .line 1235
    :cond_7
    if-eqz v6, :cond_3

    .line 1236
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1242
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->Lr:I

    .line 1243
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->Ls:I

    .line 1246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Lt:Z

    .line 1247
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Lt:Z

    .line 1251
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1252
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_a

    .line 1253
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1254
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_9

    .line 1258
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 1259
    iget-boolean v6, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_9

    .line 1260
    int-to-float v6, v3

    iget v0, v0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1265
    invoke-virtual {p0, v4}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lmiui/view/ViewPager$b;->cQ:Z

    if-eqz v0, :cond_b

    .line 1267
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dD()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lmiui/view/ViewPager;->LF:F

    sub-float/2addr v7, v8

    mul-float/2addr v0, v7

    float-to-int v0, v0

    sub-int v0, v5, v0

    .line 1269
    :goto_8
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1271
    invoke-virtual {v4, v6, v0}, Landroid/view/View;->measure(II)V

    .line 1252
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1275
    :cond_a
    return-void

    :cond_b
    move v0, v5

    goto :goto_8

    :cond_c
    move v0, v5

    goto/16 :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onPageScrolled(IFI)V
    .locals 10

    .prologue
    .line 1532
    iget v0, p0, Lmiui/view/ViewPager;->LZ:I

    if-lez v0, :cond_2

    .line 1533
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1534
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1535
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1536
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v5

    .line 1537
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1538
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_2

    .line 1539
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1540
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 1541
    iget-boolean v8, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1538
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_0

    .line 1543
    :cond_1
    iget v0, v0, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v8

    invoke-static {v0, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1546
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1563
    :goto_2
    add-int/2addr v0, v4

    .line 1565
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1566
    if-eqz v0, :cond_0

    .line 1567
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1552
    :pswitch_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 1553
    goto :goto_2

    .line 1555
    :pswitch_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1557
    goto :goto_2

    .line 1559
    :pswitch_3
    sub-int v0, v5, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1560
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_2

    .line 1572
    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1573
    iget-object v0, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1575
    :cond_3
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_4

    .line 1576
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1578
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->LX:Z

    .line 1579
    return-void

    .line 1546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2483
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2484
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2493
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2494
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2495
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2496
    invoke-virtual {p0, v5}, Lmiui/view/ViewPager;->h(Landroid/view/View;)Lmiui/view/ViewPager$b;

    move-result-object v6

    .line 2497
    if-eqz v6, :cond_1

    iget v6, v6, Lmiui/view/ViewPager$b;->position:I

    iget v7, p0, Lmiui/view/ViewPager;->Lh:I

    if-ne v6, v7, :cond_1

    .line 2498
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2504
    :goto_1
    return v2

    .line 2489
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2491
    goto :goto_0

    .line 2493
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2504
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1093
    instance-of v0, p1, Lmiui/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1094
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1108
    :goto_0
    return-void

    .line 1098
    :cond_0
    check-cast p1, Lmiui/view/ViewPager$SavedState;

    .line 1099
    invoke-virtual {p1}, Lmiui/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1101
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v1, p1, Lmiui/view/ViewPager$SavedState;->Ml:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1103
    iget v0, p1, Lmiui/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1105
    :cond_1
    iget v0, p1, Lmiui/view/ViewPager$SavedState;->position:I

    iput v0, p0, Lmiui/view/ViewPager;->Li:I

    .line 1106
    iget-object v0, p1, Lmiui/view/ViewPager$SavedState;->Ml:Landroid/os/Parcelable;

    iput-object v0, p0, Lmiui/view/ViewPager;->Lj:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1082
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1083
    new-instance v1, Lmiui/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1084
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    iput v0, v1, Lmiui/view/ViewPager$SavedState;->position:I

    .line 1085
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lmiui/view/ViewPager$SavedState;->Ml:Landroid/os/Parcelable;

    .line 1088
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1282
    if-eq p1, p3, :cond_0

    .line 1283
    iget v0, p0, Lmiui/view/ViewPager;->Ll:I

    iget v1, p0, Lmiui/view/ViewPager;->Ll:I

    invoke-direct {p0, p1, p3, v0, v1}, Lmiui/view/ViewPager;->d(IIII)V

    .line 1285
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1768
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LM:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1881
    :goto_0
    return v0

    .line 1775
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1778
    goto :goto_0

    .line 1781
    :cond_1
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1783
    goto :goto_0

    .line 1786
    :cond_3
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1787
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 1789
    :cond_4
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1794
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1878
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 1879
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    :cond_6
    move v0, v1

    .line 1881
    goto :goto_0

    .line 1796
    :pswitch_1
    iget-object v0, p0, Lmiui/view/ViewPager;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1797
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 1798
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 1799
    iput-boolean v1, p0, Lmiui/view/ViewPager;->qp:Z

    .line 1800
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->U(I)V

    .line 1803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->LE:F

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1804
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->qo:I

    goto :goto_1

    .line 1808
    :pswitch_2
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-nez v0, :cond_7

    .line 1809
    iget v0, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1810
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1811
    iget v4, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1812
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1813
    iget v5, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1815
    iget v5, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    .line 1817
    iput-boolean v1, p0, Lmiui/view/ViewPager;->qp:Z

    .line 1818
    iget v0, p0, Lmiui/view/ViewPager;->LE:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lmiui/view/ViewPager;->LE:F

    iget v3, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1820
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->U(I)V

    .line 1821
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1825
    :cond_7
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v0, :cond_5

    .line 1827
    iget v0, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1828
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1829
    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->b(F)Z

    move-result v2

    goto :goto_1

    .line 1818
    :cond_8
    iget v0, p0, Lmiui/view/ViewPager;->LE:F

    iget v3, p0, Lmiui/view/ViewPager;->fy:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 1833
    :pswitch_3
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v0, :cond_5

    .line 1834
    iget-object v0, p0, Lmiui/view/ViewPager;->qC:Landroid/view/VelocityTracker;

    .line 1835
    const/16 v2, 0x3e8

    iget v3, p0, Lmiui/view/ViewPager;->qt:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1836
    iget v2, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 1837
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 1838
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 1839
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1840
    invoke-direct {p0}, Lmiui/view/ViewPager;->dz()Lmiui/view/ViewPager$b;

    move-result-object v4

    .line 1841
    iget v5, v4, Lmiui/view/ViewPager$b;->position:I

    .line 1842
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Lmiui/view/ViewPager$b;->Mj:F

    sub-float/2addr v2, v3

    iget v3, v4, Lmiui/view/ViewPager$b;->widthFactor:F

    div-float/2addr v2, v3

    .line 1843
    iget v3, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1844
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1845
    iget v4, p0, Lmiui/view/ViewPager;->LE:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1846
    invoke-direct {p0, v5, v2, v0, v3}, Lmiui/view/ViewPager;->a(IFII)I

    move-result v2

    .line 1848
    invoke-virtual {p0, v2, v1, v1, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 1850
    iput v6, p0, Lmiui/view/ViewPager;->qo:I

    .line 1851
    invoke-direct {p0}, Lmiui/view/ViewPager;->dA()V

    .line 1852
    iget-object v0, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1853
    iget-object v0, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1854
    iget-object v0, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    iget-object v2, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    or-int/2addr v2, v0

    .line 1855
    goto/16 :goto_1

    .line 1858
    :pswitch_4
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qp:Z

    if-eqz v0, :cond_5

    .line 1859
    iget v0, p0, Lmiui/view/ViewPager;->Lh:I

    invoke-virtual {p0, v0, v1, v1}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 1860
    iput v6, p0, Lmiui/view/ViewPager;->qo:I

    .line 1861
    invoke-direct {p0}, Lmiui/view/ViewPager;->dA()V

    .line 1862
    iget-object v0, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1863
    iget-object v0, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1864
    iget-object v0, p0, Lmiui/view/ViewPager;->LO:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    iget-object v2, p0, Lmiui/view/ViewPager;->LP:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    .line 1868
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1869
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1870
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->qo:I

    goto/16 :goto_1

    .line 1874
    :pswitch_6
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1875
    iget v0, p0, Lmiui/view/ViewPager;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1794
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2570
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2587
    :goto_0
    return v0

    .line 2573
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2587
    goto :goto_0

    .line 2575
    :sswitch_0
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    if-ltz v2, :cond_1

    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v3, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v3}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2576
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2579
    goto :goto_0

    .line 2581
    :sswitch_1
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v2, :cond_2

    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    if-lez v2, :cond_2

    iget v2, p0, Lmiui/view/ViewPager;->Lh:I

    iget-object v3, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v3}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2582
    iget v1, p0, Lmiui/view/ViewPager;->Lh:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2585
    goto :goto_0

    .line 2573
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAdapter(Lmiui/view/PagerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 349
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v1, p0, Lmiui/view/ViewPager;->Lk:Lmiui/view/ViewPager$d;

    invoke-virtual {v0, v1}, Lmiui/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 351
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 352
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$b;

    .line 353
    iget-object v2, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget v3, v0, Lmiui/view/ViewPager$b;->position:I

    iget-object v0, v0, Lmiui/view/ViewPager$b;->Mh:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v0}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 356
    iget-object v0, p0, Lmiui/view/ViewPager;->nu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    invoke-direct {p0}, Lmiui/view/ViewPager;->dv()V

    .line 358
    iput v4, p0, Lmiui/view/ViewPager;->Lh:I

    .line 359
    invoke-virtual {p0, v4, v4}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 362
    :cond_1
    iget-object v0, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    .line 363
    iput-object p1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    .line 365
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p0, Lmiui/view/ViewPager;->Lk:Lmiui/view/ViewPager$d;

    if-nez v1, :cond_2

    .line 367
    new-instance v1, Lmiui/view/ViewPager$d;

    invoke-direct {v1, p0, v5}, Lmiui/view/ViewPager$d;-><init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V

    iput-object v1, p0, Lmiui/view/ViewPager;->Lk:Lmiui/view/ViewPager$d;

    .line 369
    :cond_2
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v2, p0, Lmiui/view/ViewPager;->Lk:Lmiui/view/ViewPager$d;

    invoke-virtual {v1, v2}, Lmiui/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    iput-boolean v4, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 371
    iput-boolean v6, p0, Lmiui/view/ViewPager;->LQ:Z

    .line 372
    iget v1, p0, Lmiui/view/ViewPager;->Li:I

    if-ltz v1, :cond_5

    .line 373
    iget-object v1, p0, Lmiui/view/ViewPager;->Lg:Lmiui/view/PagerAdapter;

    iget-object v2, p0, Lmiui/view/ViewPager;->Lj:Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v5}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 374
    iget v1, p0, Lmiui/view/ViewPager;->Li:I

    invoke-virtual {p0, v1, v4, v6}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 375
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/ViewPager;->Li:I

    .line 376
    iput-object v5, p0, Lmiui/view/ViewPager;->Lj:Landroid/os/Parcelable;

    .line 382
    :cond_3
    :goto_1
    iget-object v1, p0, Lmiui/view/ViewPager;->Mc:Lmiui/view/ViewPager$c;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 383
    iget-object v1, p0, Lmiui/view/ViewPager;->Mc:Lmiui/view/ViewPager$c;

    invoke-interface {v1, v0, p1}, Lmiui/view/ViewPager$c;->a(Lmiui/view/PagerAdapter;Lmiui/view/PagerAdapter;)V

    .line 385
    :cond_4
    return-void

    .line 378
    :cond_5
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    goto :goto_1
.end method

.method public setBottomMarginProgress(F)V
    .locals 1

    .prologue
    .line 2622
    iput p1, p0, Lmiui/view/ViewPager;->LF:F

    .line 2623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->LG:Z

    .line 2624
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 2625
    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    .line 2626
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 420
    iget-boolean v0, p0, Lmiui/view/ViewPager;->LQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 421
    return-void

    :cond_0
    move v0, v1

    .line 420
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lmiui/view/ViewPager;->Lv:Z

    .line 431
    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 432
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .prologue
    .line 2591
    iput-boolean p1, p0, Lmiui/view/ViewPager;->Md:Z

    .line 2592
    return-void
.end method

.method public setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 514
    iput-object p1, p0, Lmiui/view/ViewPager;->Mb:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 515
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    .prologue
    const/4 v0, 0x3

    .line 547
    if-ge p1, v0, :cond_0

    .line 548
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 552
    :cond_0
    iget v0, p0, Lmiui/view/ViewPager;->Lw:I

    if-eq p1, v0, :cond_1

    .line 553
    iput p1, p0, Lmiui/view/ViewPager;->Lw:I

    .line 554
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dx()V

    .line 556
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lmiui/view/ViewPager;->Ma:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 503
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lmiui/view/ViewPager;->Ll:I

    .line 568
    iput p1, p0, Lmiui/view/ViewPager;->Ll:I

    .line 570
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 571
    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/view/ViewPager;->d(IIII)V

    .line 573
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 574
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 591
    iput-object p1, p0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    .line 592
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->refreshDrawableState()V

    .line 593
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    .line 594
    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    .line 595
    return-void

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->g(III)V

    .line 638
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->Lm:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
