.class public Lmiui/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private Ru:Z

.field private Rv:Z

.field private Rw:Lmiui/widget/FilterSortView;

.field private sl:Landroid/widget/ImageView;

.field private uz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->filter_sort_tab_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->uz:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/miui/internal/R$id;->arrow:I

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sl:Landroid/widget/ImageView;

    .line 136
    if-eqz p2, :cond_0

    .line 137
    sget-object v0, Lcom/miui/internal/R$styleable;->FilterSortView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    sget v1, Lcom/miui/internal/R$styleable;->FilterSortView_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    sget v2, Lcom/miui/internal/R$styleable;->FilterSortView_descending:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-direct {p0, v1, v2}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    .line 144
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 147
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setGravity(I)V

    .line 148
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, p2}, Lmiui/widget/FilterSortView$TabView;->s(Z)V

    .line 154
    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->r(Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->Ru:Z

    return v0
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->s(Z)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->Rv:Z

    return v0
.end method

.method private r(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiui/widget/FilterSortView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Rw:Lmiui/widget/FilterSortView;

    .line 163
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Rw:Lmiui/widget/FilterSortView;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Rw:Lmiui/widget/FilterSortView;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 165
    :goto_0
    if-ge v1, v3, :cond_1

    .line 166
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Rw:Lmiui/widget/FilterSortView;

    invoke-virtual {v0, v1}, Lmiui/widget/FilterSortView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/FilterSortView$TabView;

    .line 167
    if-eq v0, p0, :cond_0

    iget-boolean v4, v0, Lmiui/widget/FilterSortView$TabView;->Ru:Z

    if-eqz v4, :cond_0

    .line 168
    invoke-direct {v0, v2}, Lmiui/widget/FilterSortView$TabView;->r(Z)V

    .line 165
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->Ru:Z

    .line 174
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    return-void
.end method

.method private s(Z)V
    .locals 2

    .prologue
    .line 184
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->Rv:Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sl:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_0
.end method


# virtual methods
.method public isDescending()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->Rv:Z

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lmiui/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$1;-><init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method
