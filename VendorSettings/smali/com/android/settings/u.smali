.class abstract Lcom/android/settings/u;
.super Ljava/lang/Object;
.source "ApkIconLoader.java"


# instance fields
.field state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/r;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/u;-><init>()V

    return-void
.end method

.method public static y()Lcom/android/settings/u;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/settings/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/s;-><init>(Lcom/android/settings/r;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(Landroid/widget/ImageView;)Z
.end method

.method public abstract isNull()Z
.end method
