.class Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;
.super Landroid/view/LayoutInflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final lI:Lmiui/reflect/Field;

.field private static final lJ:Ljava/lang/reflect/Field;


# instance fields
.field private lG:Landroid/view/LayoutInflater;

.field private lH:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mContext"

    const-string v2, "Landroid/content/Context;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lI:Lmiui/reflect/Field;

    .line 53
    invoke-static {}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->aB()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTitle"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lJ:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lI:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lG:Landroid/view/LayoutInflater;

    .line 59
    iput-object p2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lH:Landroid/view/Window;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lG:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    sget v0, Lmiui/R$id;->status_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->q(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 109
    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, v2, v0, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    sget v1, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 113
    sget v1, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 115
    sget v1, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v6}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 127
    sget v0, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    sget v1, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    and-int/lit8 v7, v5, 0x8

    if-nez v7, :cond_2

    .line 133
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    if-eqz v4, :cond_4

    and-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_4

    and-int/lit8 v4, v5, 0x4

    if-nez v4, :cond_4

    .line 141
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v6, v8, v1, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    const/4 v4, 0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 146
    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :goto_1
    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    :cond_3
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lJ:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lH:Landroid/view/Window;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_2
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private q(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lG:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;

    iget-object v2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lH:Landroid/view/Window;

    invoke-direct {v1, v0, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-object v1
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lH:Landroid/view/Window;

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v1

    .line 71
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lG:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    sget v2, Lcom/miui/internal/R$layout;->screen_action_bar:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/miui/internal/R$layout;->screen_simple:I

    if-ne v1, v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->lH:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-direct {p0, v2, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    sget v3, Lcom/miui/internal/R$layout;->starting_window_simple:I

    if-ne v1, v3, :cond_0

    .line 84
    invoke-direct {p0, v2, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$a;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
