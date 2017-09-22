.class public Lcom/miui/internal/hybrid/HybridProgressView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final eU:I = 0x2710

.field private static final eV:I = 0x2a

.field private static final eW:I = 0xa

.field private static final eX:I = 0x28

.field private static final eY:I = 0x251c

.field private static final eZ:I = 0x320


# instance fields
.field private fa:I

.field private fb:I

.field private fc:I

.field private fd:Landroid/graphics/Rect;

.field private fe:Landroid/graphics/drawable/Drawable;

.field private ff:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridProgressView;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    return v0
.end method

.method static synthetic c(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fc:I

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    .line 65
    iput v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    .line 66
    iput v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    .line 67
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->hybrid_progress_reverse:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fe:Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance v0, Lcom/miui/internal/hybrid/HybridProgressView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/HybridProgressView$1;-><init>(Lcom/miui/internal/hybrid/HybridProgressView;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->ff:Landroid/graphics/Rect;

    .line 90
    return-void
.end method

.method static synthetic e(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x64

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    neg-float v1, v0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->ff:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fe:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->ff:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 95
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    iget v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 96
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 97
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fd:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 98
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 101
    mul-int/lit8 v0, p1, 0x64

    .line 102
    iget v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    const/16 v2, 0x320

    if-gt v1, v2, :cond_0

    .line 103
    iget v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    iput v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    .line 105
    :cond_0
    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    .line 106
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fb:I

    iget v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fa:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fc:I

    .line 108
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
