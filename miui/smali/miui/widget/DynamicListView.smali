.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final Qp:I = 0xff

.field private static final Qq:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final Qr:I = 0x5

.field private static final Qs:I = 0x32


# instance fields
.field private final INVALID_POINTER_ID:I

.field private Mg:I

.field private QB:Z

.field private QC:I

.field private QD:I

.field private QE:I

.field private QF:I

.field private QG:J

.field private QH:J

.field private QI:J

.field private QJ:Landroid/graphics/drawable/BitmapDrawable;

.field private QK:Landroid/graphics/Rect;

.field private QL:Landroid/graphics/Rect;

.field private QM:Landroid/graphics/Rect;

.field private QN:Landroid/graphics/Rect;

.field private QO:Z

.field private QP:Landroid/graphics/drawable/Drawable;

.field private QQ:I

.field private QR:Landroid/widget/AbsListView$OnScrollListener;

.field private QS:Landroid/animation/ObjectAnimator;

.field private QT:Landroid/animation/ObjectAnimator;

.field private QU:Lmiui/widget/DynamicListView$RearrangeListener;

.field private QV:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private QW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private QX:Landroid/graphics/Bitmap;

.field private QY:Landroid/animation/AnimatorListenerAdapter;

.field private QZ:Ljava/lang/Runnable;

.field private final Qt:I

.field private Qu:F

.field private Qv:J

.field private Qw:I

.field private Qx:I

.field private Qy:I

.field private Qz:Z

.field private Ra:Landroid/widget/AbsListView$OnScrollListener;

.field private qL:Landroid/graphics/Paint;

.field private qo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->Qq:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 77
    iput v3, p0, Lmiui/widget/DynamicListView;->Qt:I

    .line 79
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qu:F

    .line 83
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    .line 85
    iput v3, p0, Lmiui/widget/DynamicListView;->Qw:I

    .line 87
    iput v3, p0, Lmiui/widget/DynamicListView;->Qx:I

    .line 89
    iput v2, p0, Lmiui/widget/DynamicListView;->Qy:I

    .line 91
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 93
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 95
    iput v2, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 101
    iput v2, p0, Lmiui/widget/DynamicListView;->QF:I

    .line 103
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QG:J

    .line 105
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QH:J

    .line 107
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    .line 119
    iput v3, p0, Lmiui/widget/DynamicListView;->qo:I

    .line 121
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QO:Z

    .line 123
    iput v2, p0, Lmiui/widget/DynamicListView;->Mg:I

    .line 139
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Lmiui/widget/DynamicListView$5;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QY:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance v0, Lmiui/widget/DynamicListView$6;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lmiui/widget/DynamicListView$7;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Ra:Landroid/widget/AbsListView$OnScrollListener;

    .line 303
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v3, p0, Lmiui/widget/DynamicListView;->Qt:I

    .line 79
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qu:F

    .line 83
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    .line 85
    iput v3, p0, Lmiui/widget/DynamicListView;->Qw:I

    .line 87
    iput v3, p0, Lmiui/widget/DynamicListView;->Qx:I

    .line 89
    iput v2, p0, Lmiui/widget/DynamicListView;->Qy:I

    .line 91
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 93
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 95
    iput v2, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 101
    iput v2, p0, Lmiui/widget/DynamicListView;->QF:I

    .line 103
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QG:J

    .line 105
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QH:J

    .line 107
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    .line 119
    iput v3, p0, Lmiui/widget/DynamicListView;->qo:I

    .line 121
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QO:Z

    .line 123
    iput v2, p0, Lmiui/widget/DynamicListView;->Mg:I

    .line 139
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Lmiui/widget/DynamicListView$5;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QY:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance v0, Lmiui/widget/DynamicListView$6;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lmiui/widget/DynamicListView$7;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Ra:Landroid/widget/AbsListView$OnScrollListener;

    .line 321
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput v3, p0, Lmiui/widget/DynamicListView;->Qt:I

    .line 79
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qu:F

    .line 83
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    .line 85
    iput v3, p0, Lmiui/widget/DynamicListView;->Qw:I

    .line 87
    iput v3, p0, Lmiui/widget/DynamicListView;->Qx:I

    .line 89
    iput v2, p0, Lmiui/widget/DynamicListView;->Qy:I

    .line 91
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 93
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 95
    iput v2, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 101
    iput v2, p0, Lmiui/widget/DynamicListView;->QF:I

    .line 103
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QG:J

    .line 105
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QH:J

    .line 107
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    .line 119
    iput v3, p0, Lmiui/widget/DynamicListView;->qo:I

    .line 121
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QO:Z

    .line 123
    iput v2, p0, Lmiui/widget/DynamicListView;->Mg:I

    .line 139
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Lmiui/widget/DynamicListView$5;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QY:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance v0, Lmiui/widget/DynamicListView$6;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lmiui/widget/DynamicListView$7;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Ra:Landroid/widget/AbsListView$OnScrollListener;

    .line 312
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lmiui/widget/DynamicListView;->Mg:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QH:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->QG:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QX:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->ah(I)Landroid/view/View;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 944
    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 947
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/DynamicListView;->ah(I)Landroid/view/View;

    move-result-object v1

    .line 948
    if-eqz v1, :cond_0

    .line 949
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v3

    .line 953
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 954
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 955
    invoke-virtual {p0, v1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 956
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 957
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 958
    add-int v5, v3, v1

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    .line 959
    iget-object v5, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 963
    :cond_3
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QV:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v1, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 964
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 965
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lmiui/widget/DynamicListView$4;

    invoke-direct {v2, p0, v0, p2}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1036
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private ah(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 521
    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 523
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;I)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmiui/widget/DynamicListView;->Qy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->Qy:I

    return v0
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->QH:J

    return-wide p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object v0
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->QI:J

    return-wide p1
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->QB:Z

    return v0
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmiui/widget/DynamicListView;->QC:I

    return v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Ra:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 326
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 328
    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->QE:I

    .line 330
    const/high16 v2, 0x3fc00000    # 1.5f

    iget v3, p0, Lmiui/widget/DynamicListView;->QE:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->QD:I

    .line 331
    const/high16 v2, 0x42480000    # 50.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/DynamicListView;->QF:I

    .line 332
    sget v1, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QP:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->QQ:I

    .line 335
    return-void
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->h(J)V

    return-void
.end method

.method static synthetic e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QR:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private ek()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/DynamicListView;->Qu:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/DynamicListView;->Qu:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 385
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 388
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 390
    const-string v1, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->Qq:Landroid/animation/TypeEvaluator;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    .line 393
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 394
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$8;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$8;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$9;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$9;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    return-void

    .line 393
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private el()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 636
    iget v0, p0, Lmiui/widget/DynamicListView;->Qw:I

    iget v1, p0, Lmiui/widget/DynamicListView;->Qx:I

    sub-int v6, v0, v1

    .line 637
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiui/widget/DynamicListView;->Qy:I

    add-int/2addr v0, v1

    add-int v4, v0, v6

    .line 638
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 639
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QI:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 640
    iget-wide v8, p0, Lmiui/widget/DynamicListView;->QH:J

    invoke-virtual {p0, v8, v9}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v8

    .line 641
    iget-wide v10, p0, Lmiui/widget/DynamicListView;->QG:J

    invoke-virtual {p0, v10, v11}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    .line 642
    if-eqz v0, :cond_4

    add-int v7, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v7, v9, :cond_4

    move v7, v2

    .line 644
    :goto_0
    if-eqz v1, :cond_5

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 646
    :goto_1
    if-nez v7, :cond_0

    if-eqz v2, :cond_3

    .line 647
    :cond_0
    if-eqz v7, :cond_6

    iget-wide v4, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 648
    :goto_2
    if-eqz v7, :cond_1

    move-object v1, v0

    .line 649
    :cond_1
    invoke-virtual {p0, v8}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 651
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v2, :cond_2

    .line 652
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-virtual {p0, v1}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    invoke-interface {v2, v0, v7}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    .line 656
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 657
    iget v0, p0, Lmiui/widget/DynamicListView;->Qw:I

    iput v0, p0, Lmiui/widget/DynamicListView;->Qx:I

    .line 658
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 660
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 661
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QH:J

    invoke-direct {p0, v0, v1}, Lmiui/widget/DynamicListView;->h(J)V

    .line 664
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 665
    new-instance v1, Lmiui/widget/DynamicListView$10;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lmiui/widget/DynamicListView$10;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 682
    :cond_3
    return-void

    :cond_4
    move v7, v3

    .line 642
    goto :goto_0

    :cond_5
    move v2, v3

    .line 644
    goto :goto_1

    .line 647
    :cond_6
    iget-wide v4, p0, Lmiui/widget/DynamicListView;->QG:J

    goto :goto_2
.end method

.method private em()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 689
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QH:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 690
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->Qz:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->QO:Z

    if-eqz v1, :cond_3

    .line 691
    :cond_0
    iput-boolean v6, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 692
    iput-boolean v6, p0, Lmiui/widget/DynamicListView;->QO:Z

    .line 693
    iput-boolean v6, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 694
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/DynamicListView;->qo:I

    .line 700
    iget v1, p0, Lmiui/widget/DynamicListView;->Mg:I

    if-eqz v1, :cond_1

    .line 701
    iput-boolean v7, p0, Lmiui/widget/DynamicListView;->QO:Z

    .line 730
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 706
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 711
    const-string v0, "HoverCellBounds"

    sget-object v1, Lmiui/widget/DynamicListView;->Qq:Landroid/animation/TypeEvaluator;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    aput-object v3, v2, v6

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    .line 714
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 715
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$11;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$11;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 725
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QY:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 714
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 728
    :cond_3
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->en()V

    goto :goto_0
.end method

.method private en()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 736
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QH:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 737
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->Qz:Z

    if-eqz v1, :cond_0

    .line 738
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QG:J

    .line 739
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QH:J

    .line 740
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 741
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    .line 743
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 745
    :cond_0
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 746
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 747
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->qo:I

    .line 748
    return-void
.end method

.method private eo()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 756
    return-void
.end method

.method static synthetic f(Lmiui/widget/DynamicListView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->Qz:Z

    return v0
.end method

.method static synthetic g(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eo()V

    return-void
.end method

.method private h(J)V
    .locals 5

    .prologue
    .line 477
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v1

    .line 478
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 479
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->QG:J

    .line 480
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->QI:J

    .line 481
    return-void
.end method

.method static synthetic h(Lmiui/widget/DynamicListView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->QO:Z

    return v0
.end method

.method static synthetic i(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->em()V

    return-void
.end method

.method static synthetic j(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->el()V

    return-void
.end method

.method private k(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 451
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->l(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 452
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 453
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    .line 454
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    .line 455
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 456
    return-object v5
.end method

.method static synthetic k(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QP:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic l(Lmiui/widget/DynamicListView;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->Qv:J

    return-wide v0
.end method

.method private l(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 467
    return-object v0
.end method

.method static synthetic m(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic n(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QW:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 554
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 556
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QX:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QX:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 561
    :cond_1
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    const/4 v0, -0x1

    .line 508
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 7

    .prologue
    .line 487
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v3

    .line 488
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 489
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 490
    invoke-virtual {p0, v1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 491
    add-int v4, v3, v1

    .line 492
    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 493
    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object v0, v2

    .line 497
    :goto_1
    return-object v0

    .line 489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const/4 v0, 0x1

    .line 764
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollOffset()I

    move-result v1

    .line 765
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v2

    .line 766
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollExtent()I

    move-result v3

    .line 767
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollRange()I

    move-result v4

    .line 768
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 769
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 770
    iget v7, p0, Lmiui/widget/DynamicListView;->QF:I

    mul-int/lit8 v7, v7, 0x2

    if-gt v5, v7, :cond_1

    if-lez v1, :cond_1

    .line 772
    iget v1, p0, Lmiui/widget/DynamicListView;->QE:I

    neg-int v1, v1

    iput v1, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 773
    iget v1, p0, Lmiui/widget/DynamicListView;->QF:I

    if-gt v5, v1, :cond_0

    .line 774
    iget v1, p0, Lmiui/widget/DynamicListView;->QD:I

    neg-int v1, v1

    iput v1, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 776
    :cond_0
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v10, v11}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    :goto_0
    return v0

    .line 779
    :cond_1
    add-int v7, v5, v6

    iget v8, p0, Lmiui/widget/DynamicListView;->QF:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_3

    add-int/2addr v1, v3

    if-ge v1, v4, :cond_3

    .line 782
    iget v1, p0, Lmiui/widget/DynamicListView;->QE:I

    iput v1, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 783
    add-int v1, v5, v6

    iget v3, p0, Lmiui/widget/DynamicListView;->QF:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 784
    iget v1, p0, Lmiui/widget/DynamicListView;->QD:I

    iput v1, p0, Lmiui/widget/DynamicListView;->QC:I

    .line 786
    :cond_2
    iget-object v1, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v10, v11}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 789
    :cond_3
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QZ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 790
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 623
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 567
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qx:I

    .line 568
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->qo:I

    goto :goto_0

    .line 571
    :pswitch_2
    iget v0, p0, Lmiui/widget/DynamicListView;->qo:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 574
    iget v0, p0, Lmiui/widget/DynamicListView;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qw:I

    .line 576
    iget v0, p0, Lmiui/widget/DynamicListView;->Qw:I

    iget v2, p0, Lmiui/widget/DynamicListView;->Qx:I

    sub-int/2addr v0, v2

    .line 577
    iget-boolean v2, p0, Lmiui/widget/DynamicListView;->Qz:Z

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QS:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 582
    :cond_1
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/DynamicListView;->Qy:I

    add-int/2addr v0, v2

    .line 584
    if-gez v0, :cond_3

    move v0, v1

    .line 590
    :cond_2
    :goto_2
    iget-object v2, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/DynamicListView;->QL:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 592
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    .line 593
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->el()V

    .line 594
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->QB:Z

    .line 595
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eo()V

    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    .line 587
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DynamicListView;->QK:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 600
    :pswitch_3
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->em()V

    goto :goto_0

    .line 603
    :pswitch_4
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->en()V

    goto/16 :goto_0

    .line 612
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 616
    iget v1, p0, Lmiui/widget/DynamicListView;->qo:I

    if-ne v0, v1, :cond_0

    .line 617
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->em()V

    goto/16 :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    .line 811
    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 822
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 823
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 824
    const/4 v3, 0x0

    .line 825
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 826
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v8

    .line 827
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 828
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    :cond_1
    const/4 v2, 0x1

    .line 838
    :goto_1
    if-eqz v2, :cond_3

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView;->l(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/widget/DynamicListView;->QX:Landroid/graphics/Bitmap;

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/DynamicListView;->QV:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 845
    const-string v2, "LastStateAlpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 847
    move-object/from16 v0, p0

    iget-wide v4, v0, Lmiui/widget/DynamicListView;->Qv:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 848
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 849
    new-instance v3, Lmiui/widget/DynamicListView$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmiui/widget/DynamicListView$12;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 916
    :cond_2
    :goto_2
    return-void

    .line 859
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 860
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 861
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 862
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 863
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 864
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 865
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 866
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 868
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 870
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v12, :cond_5

    .line 871
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 872
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    .line 875
    :goto_4
    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    int-to-float v3, v3

    aput v3, v14, v15

    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 878
    new-instance v13, Lmiui/widget/DynamicListView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 897
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/widget/DynamicListView;->Qv:J

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 899
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 900
    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/widget/DynamicListView;->Qv:J

    const-wide/16 v16, 0x3

    div-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 901
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 872
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_4

    .line 903
    :cond_5
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 904
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v12, :cond_6

    .line 905
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 904
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 907
    :cond_6
    new-instance v2, Lmiui/widget/DynamicListView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v6}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 914
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_1

    .line 899
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 343
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->Qv:J

    .line 344
    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 430
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 431
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 432
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->QQ:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lmiui/widget/DynamicListView;->QQ:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QP:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 437
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QM:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 438
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QN:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->invalidate(Landroid/graphics/Rect;)V

    .line 439
    return-void
.end method

.method public setLastStateAlpha(I)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lmiui/widget/DynamicListView;->qL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 930
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 931
    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QV:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    .line 1045
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QR:Landroid/widget/AbsListView$OnScrollListener;

    .line 802
    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 1054
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .prologue
    .line 353
    iput p1, p0, Lmiui/widget/DynamicListView;->Qu:F

    .line 354
    return-void
.end method

.method public startDragging(I)V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 364
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QY:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->QT:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Qy:I

    .line 367
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->ah(I)Landroid/view/View;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->QH:J

    .line 369
    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->k(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->QJ:Landroid/graphics/drawable/BitmapDrawable;

    .line 370
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ek()V

    .line 371
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->Qz:Z

    .line 373
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->QH:J

    invoke-direct {p0, v0, v1}, Lmiui/widget/DynamicListView;->h(J)V

    .line 374
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lmiui/widget/DynamicListView;->QU:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-interface {v0}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    .line 377
    :cond_1
    return-void
.end method
