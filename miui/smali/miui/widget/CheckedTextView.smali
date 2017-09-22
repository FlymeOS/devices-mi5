.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final Om:[I

.field private static final On:I


# instance fields
.field private Oo:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->Om:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->dR()I

    move-result v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x0

    .line 115
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v0, v0

    .line 116
    :cond_1
    int-to-float v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 122
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 125
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v2

    .line 129
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 130
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    .line 142
    :goto_1
    add-int/2addr v4, v0

    add-int/2addr v1, v2

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 138
    :sswitch_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 135
    :sswitch_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 136
    goto :goto_1

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private dR()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 159
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 162
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    .line 165
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 175
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 149
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lmiui/widget/CheckedTextView;->Om:[I

    invoke-static {v0, v1}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 153
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/widget/CheckedTextView;->b(Landroid/graphics/Canvas;)V

    .line 104
    invoke-direct {p0, p1}, Lmiui/widget/CheckedTextView;->a(Landroid/graphics/Canvas;)V

    .line 105
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 75
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->dR()I

    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 81
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v2, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 86
    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_2

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    if-le v1, v0, :cond_2

    .line 93
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/CheckedTextView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 64
    sget-object v0, Lmiui/widget/CheckedTextView;->Om:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 65
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    .line 66
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    :cond_1
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void

    :cond_2
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->Oo:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
