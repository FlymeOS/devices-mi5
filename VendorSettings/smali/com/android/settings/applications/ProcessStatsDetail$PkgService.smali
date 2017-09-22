.class Lcom/android/vendorsettings/applications/ProcessStatsDetail$PkgService;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"


# instance fields
.field final LZ:Ljava/util/ArrayList;

.field mDuration:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$PkgService;->LZ:Ljava/util/ArrayList;

    return-void
.end method
