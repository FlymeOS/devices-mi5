.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsListView_class;
.source "SourceFile"


# static fields
.field private static final ls:Lmiui/reflect/Field;

.field private static final lx:I = 0x1

.field private static final ly:I = 0x2


# instance fields
.field private lA:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lt:I

.field private lu:[I

.field private lv:[I

.field private lw:[I

.field private lz:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mListPadding"

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->ls:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsListView_class;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lu:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lv:[I

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lz:Ljava/util/WeakHashMap;

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lA:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/widget/AbsListView;)I
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->ls:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 178
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private a(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lz:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lA:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    if-nez v0, :cond_7

    .line 92
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_12

    .line 95
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lu:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 96
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 97
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lu:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    if-gt v0, v1, :cond_3

    move v0, v2

    .line 99
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$attr;->actionBarSplitTopLine:I

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    iput v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    .line 106
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v5, Lcom/miui/internal/R$id;->parentPanel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_11

    .line 109
    sget v5, Lmiui/R$id;->customPanel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 111
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lv:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 112
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 113
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    aget v0, v0, v2

    iget-object v5, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lv:[I

    aget v5, v5, v2

    if-lt v0, v5, :cond_4

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lw:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lv:[I

    aget v5, v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 116
    :cond_1
    :goto_2
    sget v1, Lcom/miui/internal/R$drawable;->action_bar_split_top_line_light:I

    iput v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    move v1, v2

    .line 118
    :goto_3
    iget-object v6, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lz:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_5

    move v5, v2

    :goto_4
    if-eqz v0, :cond_6

    :goto_5
    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v4, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lA:Ljava/util/WeakHashMap;

    iget v5, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v0

    move v5, v1

    .line 128
    :goto_6
    if-nez v4, :cond_b

    if-nez v5, :cond_b

    .line 174
    :cond_2
    :goto_7
    return-void

    :cond_3
    move v0, v3

    .line 97
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 113
    goto :goto_2

    :cond_5
    move v5, v3

    .line 118
    goto :goto_4

    :cond_6
    move v4, v3

    goto :goto_5

    .line 121
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_9

    move v5, v2

    .line 122
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_a

    move v0, v2

    .line 123
    :goto_9
    if-eqz v1, :cond_8

    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    :cond_8
    move v4, v0

    goto :goto_6

    :cond_9
    move v5, v3

    .line 121
    goto :goto_8

    :cond_a
    move v0, v3

    .line 122
    goto :goto_9

    .line 132
    :cond_b
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 137
    if-lez v6, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    .line 139
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 140
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollX()I

    move-result v9

    .line 141
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v10

    .line 143
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 144
    instance-of v0, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_c

    move-object v0, v1

    .line 145
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v7, v11}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 148
    :cond_c
    if-eqz v5, :cond_d

    .line 149
    invoke-virtual {v1, v3, v3, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 151
    int-to-float v5, v9

    int-to-float v12, v10

    invoke-virtual {p2, v5, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    :cond_d
    if-eqz v4, :cond_2

    .line 157
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->a(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int v4, v8, v4

    if-ge v0, v4, :cond_f

    .line 160
    :goto_a
    if-nez v2, :cond_2

    .line 161
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, v8, v0

    .line 162
    add-int v2, v0, v11

    invoke-virtual {v1, v3, v0, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    if-nez v9, :cond_e

    if-eqz v10, :cond_10

    .line 164
    :cond_e
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 165
    int-to-float v2, v9

    int-to-float v3, v10

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_7

    :cond_f
    move v2, v3

    .line 157
    goto :goto_a

    .line 169
    :cond_10
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    :cond_11
    move v1, v3

    goto/16 :goto_3

    :cond_12
    move v0, v3

    goto/16 :goto_1
.end method

.method private p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "draw"

    const-string v1, "(Landroid/graphics/Canvas;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 50
    const-string v0, "onLayout"

    const-string v1, "(ZIIII)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 51
    return-void
.end method

.method protected handle()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->handleDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    move-object v1, p0

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    .line 56
    invoke-virtual/range {v1 .. v9}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->handleOnLayout(JLandroid/widget/AbsListView;ZIIII)V

    .line 57
    return-void
.end method

.method protected handleDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->originalDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    .line 61
    invoke-direct {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->a(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method protected handleOnLayout(JLandroid/widget/AbsListView;ZIIII)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p3}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->invalidateCache(Landroid/widget/AbsListView;)V

    .line 67
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->originalOnLayout(JLandroid/widget/AbsListView;ZIIII)V

    .line 68
    return-void
.end method

.method protected invalidateCache(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lz:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->lA:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method protected originalDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsListView_class.originalDraw(long, AbsListView, Canvas)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalOnLayout(JLandroid/widget/AbsListView;ZIIII)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsListView_class.originalOnLayout(long, AbsListView, boolean, int, int, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
