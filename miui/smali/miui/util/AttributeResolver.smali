.class public Lmiui/util/AttributeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AttributeResolver$a;
    }
.end annotation


# static fields
.field private static final FS:Landroid/util/TypedValue;

.field private static final FT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static FU:Lmiui/util/AttributeResolver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->FS:Landroid/util/TypedValue;

    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->FT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isUsingMiuiTheme(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 175
    sget-object v2, Lmiui/util/AttributeResolver;->FU:Lmiui/util/AttributeResolver$a;

    .line 176
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmiui/util/AttributeResolver$a;->FV:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 177
    iget-boolean v0, v2, Lmiui/util/AttributeResolver$a;->FW:Z

    .line 193
    :goto_0
    return v0

    .line 179
    :cond_0
    sget v2, Lmiui/R$attr;->miui_version:I

    invoke-static {p0, v2, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    const v2, 0x101005d

    invoke-static {p0, v2}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v2

    .line 182
    if-lez v2, :cond_2

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 185
    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 186
    sget v3, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 187
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    new-instance v1, Lmiui/util/AttributeResolver$a;

    invoke-direct {v1, p0, v0}, Lmiui/util/AttributeResolver$a;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmiui/util/AttributeResolver;->FU:Lmiui/util/AttributeResolver$a;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 186
    goto :goto_1

    .line 192
    :cond_2
    new-instance v0, Lmiui/util/AttributeResolver$a;

    invoke-direct {v0, p0, v1}, Lmiui/util/AttributeResolver$a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lmiui/util/AttributeResolver;->FU:Lmiui/util/AttributeResolver$a;

    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 55
    invoke-static {p0}, Lmiui/util/AttributeResolver;->u(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 56
    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 60
    :cond_0
    return v0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {p0}, Lmiui/util/AttributeResolver;->u(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Lmiui/util/AttributeResolver;->u(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 93
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 95
    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static resolveDimension(Landroid/content/Context;I)F
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 70
    invoke-static {p0}, Lmiui/util/AttributeResolver;->u(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 76
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .locals 3

    .prologue
    .line 145
    invoke-static {p0}, Lmiui/util/AttributeResolver;->u(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 149
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 152
    :cond_0
    return p2
.end method

.method private static u(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 36
    sget-object v0, Lmiui/util/AttributeResolver;->FS:Landroid/util/TypedValue;

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lmiui/util/AttributeResolver;->FT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 40
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 42
    sget-object v1, Lmiui/util/AttributeResolver;->FT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
