.class Lcom/android/settings/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field OJ:Z

.field OK:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$AppProcessInfo;->OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 140
    return-void
.end method
