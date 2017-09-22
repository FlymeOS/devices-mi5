.class Lcom/android/vendorsettings/bc;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gu:Lcom/android/vendorsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/vendorsettings/bc;->gu:Lcom/android/vendorsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/vendorsettings/bc;->gu:Lcom/android/vendorsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/vendorsettings/CryptKeeper;->a(Lcom/android/vendorsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 165
    return-void
.end method
