.class Lcom/android/vendorsettings/gN;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/vendorsettings/gN;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/vendorsettings/gN;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->t(Lcom/android/vendorsettings/RadioInfo;)V

    .line 560
    return-void
.end method
