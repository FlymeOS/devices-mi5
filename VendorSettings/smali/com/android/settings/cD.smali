.class Lcom/android/vendorsettings/cD;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mg:Lcom/android/vendorsettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/vendorsettings/cD;->mg:Lcom/android/vendorsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/cD;->mg:Lcom/android/vendorsettings/DreamSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DreamSettings;->a(Lcom/android/vendorsettings/DreamSettings;)Lcom/android/vendorsettings/cA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cA;->dF()V

    .line 157
    return-void
.end method
