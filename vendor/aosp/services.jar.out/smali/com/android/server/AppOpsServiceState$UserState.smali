.class final Lcom/android/server/AppOpsServiceState$UserState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field mCallbackBinder:Lcom/android/internal/app/IOpsCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsServiceState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AppOpsServiceState$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState$UserState;-><init>()V

    return-void
.end method
