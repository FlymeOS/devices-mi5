.class final Lcom/android/vendorsettings/applications/AppStatePowerBridge$1;
.super Ljava/lang/Object;
.source "AppStatePowerBridge.java"

# interfaces
.implements Lcom/android/b/a/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;)Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
