.class public Lmiui/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private Rz:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->et()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_0
    return-void
.end method

.method private et()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->actionButtonMainBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 57
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiui/R$attr;->colorAccent:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 62
    const/high16 v3, 0xd000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lmiui/widget/FloatingActionButton;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lmiui/widget/FloatingActionButton;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiui/widget/FloatingActionButton;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Rz:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 78
    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->et()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->et()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
