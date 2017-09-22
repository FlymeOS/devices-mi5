.class Lcom/android/vendorsettings/dW;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pX:Lcom/android/vendorsettings/dV;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dV;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/vendorsettings/dW;->pX:Lcom/android/vendorsettings/dV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vendorsettings/dW;->pX:Lcom/android/vendorsettings/dV;

    invoke-static {v0}, Lcom/android/vendorsettings/dV;->a(Lcom/android/vendorsettings/dV;)V

    .line 23
    return-void
.end method
