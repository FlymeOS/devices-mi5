.class final Lcom/android/server/am/MiuiUsageStats$1;
.super Ljava/lang/Thread;
.source "MiuiUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 50
    # invokes: Lcom/android/server/am/MiuiUsageStats;->writeStatsToFile()V
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->access$000()V

    .line 51
    return-void
.end method
