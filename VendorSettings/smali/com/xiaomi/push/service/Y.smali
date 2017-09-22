.class public Lcom/xiaomi/push/service/Y;
.super Landroid/app/Service;
.source "XMJobService.java"


# static fields
.field static beH:Landroid/app/Service;


# instance fields
.field private beG:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/Y;->beH:Landroid/app/Service;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/Y;->beG:Landroid/os/IBinder;

    return-void
.end method

.method static IN()Landroid/app/Service;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xiaomi/push/service/Y;->beH:Landroid/app/Service;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xiaomi/push/service/Y;->beG:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaomi/push/service/Y;->beG:Landroid/os/IBinder;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/xiaomi/push/service/Z;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/Z;-><init>(Landroid/app/Service;)V

    iget-object v0, v0, Lcom/xiaomi/push/service/Z;->beI:Landroid/os/Binder;

    iput-object v0, p0, Lcom/xiaomi/push/service/Y;->beG:Landroid/os/IBinder;

    .line 30
    :cond_0
    sput-object p0, Lcom/xiaomi/push/service/Y;->beH:Landroid/app/Service;

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/Y;->beH:Landroid/app/Service;

    .line 37
    return-void
.end method
