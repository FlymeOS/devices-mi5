.class Lcom/android/vendorsettings/dv;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# instance fields
.field final synthetic nW:Lcom/android/vendorsettings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/HomeSettings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/vendorsettings/dv;->nW:Lcom/android/vendorsettings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/HomeSettings;Lcom/android/vendorsettings/dq;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/dv;-><init>(Lcom/android/vendorsettings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/dv;->nW:Lcom/android/vendorsettings/HomeSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/HomeSettings;->a(Lcom/android/vendorsettings/HomeSettings;)V

    .line 78
    invoke-static {p1}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/vendorsettings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 80
    return-void
.end method
