.class Lcom/android/vendorsettings/s;
.super Lcom/android/vendorsettings/u;
.source "ApkIconLoader.java"


# instance fields
.field Z:Ljava/lang/ref/SoftReference;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/u;-><init>(Lcom/android/vendorsettings/r;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/r;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/vendorsettings/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/vendorsettings/s;->Z:Ljava/lang/ref/SoftReference;

    .line 102
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/s;->Z:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/s;->Z:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/s;->Z:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
