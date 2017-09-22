.class public Lcom/miui/internal/util/TaggingDrawableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final je:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final jf:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

.field private static final jg:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field static jh:[I

.field private static final ji:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    .line 38
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jf:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    .line 40
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jg:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lmiui/R$attr;->children_sequence_state:I

    aput v2, v0, v1

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jh:[I

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ji:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;IZ)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    instance-of v0, p0, Lmiui/view/OnTaggingDrawableState;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 69
    check-cast v0, Lmiui/view/OnTaggingDrawableState;

    .line 70
    invoke-interface {v0, p0, p1, p2, v1}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v1

    .line 71
    invoke-interface {v0, p0, p1, p2, v2}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    .line 77
    :goto_0
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 78
    if-eqz v1, :cond_6

    .line 79
    if-eqz v0, :cond_2

    .line 80
    if-eqz p2, :cond_1

    sget v0, Lmiui/R$attr;->state_middle_h:I

    .line 99
    :goto_1
    return v0

    .line 73
    :cond_0
    invoke-static {p0, p1, p2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v1

    .line 74
    invoke-static {p0, p1, p2, v2}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    sget v0, Lmiui/R$attr;->state_middle_v:I

    goto :goto_1

    .line 82
    :cond_2
    if-eqz v2, :cond_4

    .line 83
    if-eqz p2, :cond_3

    sget v0, Lmiui/R$attr;->state_first_h:I

    goto :goto_1

    :cond_3
    sget v0, Lmiui/R$attr;->state_last_v:I

    goto :goto_1

    .line 85
    :cond_4
    if-eqz p2, :cond_5

    sget v0, Lmiui/R$attr;->state_last_h:I

    goto :goto_1

    :cond_5
    sget v0, Lmiui/R$attr;->state_last_v:I

    goto :goto_1

    .line 89
    :cond_6
    if-eqz v0, :cond_a

    .line 90
    if-eqz v2, :cond_8

    .line 91
    if-eqz p2, :cond_7

    sget v0, Lmiui/R$attr;->state_last_h:I

    goto :goto_1

    :cond_7
    sget v0, Lmiui/R$attr;->state_first_v:I

    goto :goto_1

    .line 93
    :cond_8
    if-eqz p2, :cond_9

    sget v0, Lmiui/R$attr;->state_first_h:I

    goto :goto_1

    :cond_9
    sget v0, Lmiui/R$attr;->state_first_v:I

    goto :goto_1

    .line 96
    :cond_a
    if-eqz p2, :cond_b

    sget v0, Lmiui/R$attr;->state_single_h:I

    goto :goto_1

    :cond_b
    sget v0, Lmiui/R$attr;->state_single_v:I

    goto :goto_1
.end method

.method private static a(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 194
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    .line 195
    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v1

    .line 196
    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 197
    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 198
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 207
    :cond_1
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->relayout(Landroid/view/View;)V

    .line 210
    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 190
    :cond_1
    :goto_0
    return v0

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    if-eq v2, v3, :cond_1

    .line 185
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    sget-object v4, Lcom/miui/internal/util/TaggingDrawableHelper;->jg:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v4, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 189
    sget-object v4, Lcom/miui/internal/util/TaggingDrawableHelper;->jg:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v4, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 190
    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/view/ViewGroup;IZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 103
    if-eqz p2, :cond_1

    move v5, v1

    .line 104
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 106
    const/4 v3, 0x0

    .line 107
    add-int v2, p1, v5

    move v4, v2

    :goto_1
    if-eq v4, v0, :cond_4

    .line 108
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    move-object v0, v2

    .line 114
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-static {v0, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    return v0

    :cond_1
    move v5, v0

    .line 103
    goto :goto_0

    .line 107
    :cond_2
    add-int v2, v4, v5

    move v4, v2

    goto :goto_1

    .line 114
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method

.method public static initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->jh:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 248
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jf:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 250
    return-void
.end method

.method public static initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 253
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->hasInitViewSequenceStates(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHasInitViewSequenceStates(Landroid/view/View;Z)V

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 259
    sget-object v0, Lmiui/R$styleable;->DrawableStates:[I

    array-length v5, v0

    .line 260
    sget v1, Lmiui/R$attr;->state_single_h:I

    .line 261
    sget v0, Lmiui/R$attr;->state_single_v:I

    move v2, v3

    .line 262
    :goto_1
    if-ge v2, v5, :cond_5

    .line 263
    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    sget v6, Lmiui/R$styleable;->DrawableStates_state_first_h:I

    if-eq v2, v6, :cond_1

    sget v6, Lmiui/R$styleable;->DrawableStates_state_middle_h:I

    if-eq v2, v6, :cond_1

    sget v6, Lmiui/R$styleable;->DrawableStates_state_last_h:I

    if-eq v2, v6, :cond_1

    sget v6, Lmiui/R$styleable;->DrawableStates_state_single_h:I

    if-ne v2, v6, :cond_3

    .line 268
    :cond_1
    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    aget v1, v1, v2

    .line 262
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_3
    sget v6, Lmiui/R$styleable;->DrawableStates_state_first_v:I

    if-eq v2, v6, :cond_4

    sget v6, Lmiui/R$styleable;->DrawableStates_state_middle_v:I

    if-eq v2, v6, :cond_4

    sget v6, Lmiui/R$styleable;->DrawableStates_state_last_v:I

    if-eq v2, v6, :cond_4

    sget v6, Lmiui/R$styleable;->DrawableStates_state_single_v:I

    if-ne v2, v6, :cond_2

    .line 273
    :cond_4
    sget-object v0, Lmiui/R$styleable;->DrawableStates:[I

    aget v0, v0, v2

    goto :goto_2

    .line 277
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v2, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 279
    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v1, p0, v0}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static onDrawableStateChange(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 219
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_0

    .line 220
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ji:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 222
    if-nez v0, :cond_2

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->ji:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 226
    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 229
    :cond_3
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->jg:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 235
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 231
    :pswitch_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    .line 119
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_8

    .line 120
    check-cast p0, Landroid/widget/AbsListView;

    .line 121
    instance-of v0, p0, Landroid/widget/GridView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 122
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 123
    if-eqz p2, :cond_4

    .line 124
    rem-int v4, p1, v0

    .line 125
    if-eq v0, v1, :cond_e

    .line 126
    if-eqz p3, :cond_3

    .line 127
    add-int/lit8 v1, v4, 0x1

    if-ge v1, v0, :cond_e

    add-int/lit8 v0, p1, 0x1

    if-ge v0, v3, :cond_e

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    :goto_1
    move v1, v0

    :cond_0
    :goto_2
    move v2, v1

    .line 171
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v0, v1

    .line 121
    goto :goto_0

    .line 131
    :cond_3
    add-int/lit8 v0, v4, -0x1

    if-ltz v0, :cond_e

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    .line 139
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    .line 141
    if-eqz p3, :cond_6

    .line 142
    add-int v7, p1, v0

    if-ge v7, v3, :cond_5

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    goto :goto_2

    .line 144
    :cond_5
    add-int v3, p1, v0

    add-int/2addr v3, v4

    if-ge v3, v6, :cond_d

    .line 145
    add-int v3, p1, v4

    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    add-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-interface {v5, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    move v1, v2

    goto :goto_2

    .line 148
    :cond_6
    sub-int v3, p1, v0

    if-ltz v3, :cond_7

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    goto :goto_2

    .line 150
    :cond_7
    sub-int v3, p1, v0

    add-int/2addr v3, v4

    if-ltz v3, :cond_d

    .line 151
    add-int v3, p1, v4

    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    invoke-interface {v5, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    move v1, v2

    goto :goto_2

    .line 157
    :cond_8
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 158
    check-cast v0, Landroid/widget/LinearLayout;

    .line 159
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    .line 160
    if-eqz p2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    if-nez p2, :cond_c

    if-ne v0, v1, :cond_c

    .line 167
    :cond_a
    :goto_4
    if-nez v1, :cond_b

    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 168
    :cond_b
    invoke-static {p0, p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->b(Landroid/view/ViewGroup;IZ)Z

    move-result v2

    goto/16 :goto_3

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v1, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_1
.end method

.method public static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jf:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 62
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 54
    :goto_0
    if-ge v0, v2, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 57
    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/ViewGroup;IZ)I

    move-result v4

    .line 58
    invoke-static {p0, v0, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/ViewGroup;IZ)I

    move-result v5

    .line 59
    invoke-static {v3, v4, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;II)V

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
