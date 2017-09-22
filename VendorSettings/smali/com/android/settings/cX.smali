.class Lcom/android/settings/cX;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mL:Lcom/android/settings/cV;


# direct methods
.method constructor <init>(Lcom/android/settings/cV;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/cX;->mL:Lcom/android/settings/cV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/cX;->mL:Lcom/android/settings/cV;

    invoke-virtual {v0}, Lcom/android/settings/cV;->dR()V

    .line 317
    return-void
.end method
