.class final Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiedProcessInfo"
.end annotation


# instance fields
.field final pss:J

.field final time:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "pss"    # J

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;->time:J

    .line 328
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DiedProcessInfo;->pss:J

    .line 329
    return-void
.end method
