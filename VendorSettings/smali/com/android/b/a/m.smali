.class final Lcom/android/b/a/m;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/b/a/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1400
    iget-object v1, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v0

    .line 1402
    :cond_1
    iget-object v1, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1404
    iget-boolean v1, p1, Lcom/android/b/a/o;->aII:Z

    if-nez v1, :cond_0

    .line 1407
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1396
    return-void
.end method
