.class Lcom/android/vendorsettings/wifi/b;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic azT:Lcom/android/vendorsettings/wifi/a;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/a;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/b;->azT:Lcom/android/vendorsettings/wifi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/b;->azT:Lcom/android/vendorsettings/wifi/a;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/a;->notifyChanged()V

    .line 240
    return-void
.end method
