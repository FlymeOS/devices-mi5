.class Lcom/android/settings/gN;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/settings/gN;->xZ:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/gN;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->t(Lcom/android/settings/RadioInfo;)V

    .line 560
    return-void
.end method
