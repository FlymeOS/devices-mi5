.class public Lmiui/widget/ClearableEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private Nw:Landroid/graphics/drawable/Drawable;

.field private OH:Z

.field private OI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/miui/internal/R$attr;->editTextSearchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText need only drawableEnd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    aget-object v0, v0, v2

    iput-object v0, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v0, Lmiui/widget/ClearableEditText$1;

    invoke-direct {v0, p0}, Lmiui/widget/ClearableEditText$1;-><init>(Lmiui/widget/ClearableEditText;)V

    invoke-virtual {p0, v0}, Lmiui/widget/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lmiui/widget/ClearableEditText;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->OI:Z

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->OH:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->dT()V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->OI:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ClearableEditText;->OH:Z

    goto :goto_0

    .line 159
    :pswitch_3
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->OH:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ClearableEditText;->OH:Z

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private dT()V
    .locals 1

    .prologue
    .line 166
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmiui/widget/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 88
    const/4 v1, 0x0

    .line 89
    iget-boolean v2, p0, Lmiui/widget/ClearableEditText;->OI:Z

    if-eqz v2, :cond_0

    .line 90
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v1, v0

    .line 100
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText;->c(Landroid/view/MotionEvent;)V

    .line 105
    :goto_1
    return v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v1, v0

    .line 96
    goto :goto_0

    .line 105
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 121
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getDrawableState()[I

    move-result-object v0

    .line 125
    iget-object v1, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 127
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->invalidate()V

    .line 129
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    .line 139
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 110
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 111
    iget-boolean v1, p0, Lmiui/widget/ClearableEditText;->OI:Z

    if-nez v1, :cond_0

    .line 112
    sget-object v1, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/ClearableEditText;->mergeDrawableStates([I[I)[I

    .line 114
    :cond_0
    return-object v0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 70
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 79
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText can only set drawableRight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-object p3, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->Nw:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
