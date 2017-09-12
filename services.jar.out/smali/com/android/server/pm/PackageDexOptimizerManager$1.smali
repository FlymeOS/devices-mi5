.class final Lcom/android/server/pm/PackageDexOptimizerManager$1;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 4
    .param p1, "left"    # Landroid/app/usage/UsageStats;
    .param p2, "right"    # Landroid/app/usage/UsageStats;

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p1, Landroid/app/usage/UsageStats;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/usage/UsageStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageDexOptimizerManager$1;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result v0

    return v0
.end method
