.class Lmiui/widget/ScreenView$g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic XH:Lmiui/widget/ScreenView;

.field private XT:Landroid/graphics/Bitmap;

.field private XU:Landroid/graphics/NinePatch;

.field private XV:Landroid/graphics/Rect;

.field private ea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V
    .locals 5

    .prologue
    .line 2168
    iput-object p1, p0, Lmiui/widget/ScreenView$g;->XH:Lmiui/widget/ScreenView;

    .line 2169
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    .line 2165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    .line 2170
    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    .line 2172
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 2194
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 2176
    if-eqz v0, :cond_0

    .line 2177
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lmiui/widget/ScreenView$g;->XU:Landroid/graphics/NinePatch;

    .line 2181
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2182
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2183
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2187
    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView$g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2188
    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2189
    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2190
    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2191
    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2192
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2193
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public av(I)Z
    .locals 3

    .prologue
    .line 2231
    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2232
    invoke-static {}, Lmiui/widget/ScreenView;->fa()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2233
    invoke-static {}, Lmiui/widget/ScreenView;->fa()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2234
    const/4 v0, 0x1

    .line 2236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 2204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2205
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XU:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XU:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2208
    :cond_0
    return-void
.end method

.method public fc()I
    .locals 2

    .prologue
    .line 2226
    invoke-virtual {p0}, Lmiui/widget/ScreenView$g;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public n(II)V
    .locals 2

    .prologue
    .line 2221
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2222
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2223
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 2213
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2214
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XU:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iget-object v2, p0, Lmiui/widget/ScreenView$g;->ea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2216
    iget-object v0, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$g;->XV:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lmiui/widget/ScreenView$g;->XU:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2218
    :cond_0
    return-void
.end method
