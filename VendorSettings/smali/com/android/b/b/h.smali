.class public final Lcom/android/b/b/h;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# static fields
.field public static final aJl:Lcom/android/b/b/n;

.field public static final aJm:Lcom/android/b/b/n;

.field public static final aJn:Lcom/android/b/b/n;

.field private static final aJo:[Lcom/android/b/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/android/b/b/j;

    invoke-direct {v0, v3}, Lcom/android/b/b/j;-><init>(Lcom/android/b/b/i;)V

    sput-object v0, Lcom/android/b/b/h;->aJl:Lcom/android/b/b/n;

    .line 45
    new-instance v0, Lcom/android/b/b/l;

    invoke-direct {v0, v3}, Lcom/android/b/b/l;-><init>(Lcom/android/b/b/i;)V

    sput-object v0, Lcom/android/b/b/h;->aJm:Lcom/android/b/b/n;

    .line 48
    new-instance v0, Lcom/android/b/b/r;

    invoke-direct {v0, v3}, Lcom/android/b/b/r;-><init>(Lcom/android/b/b/i;)V

    sput-object v0, Lcom/android/b/b/h;->aJn:Lcom/android/b/b/n;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/b/b/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/b/b/h;->aJl:Lcom/android/b/b/n;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/b/b/k;

    invoke-direct {v2, v3}, Lcom/android/b/b/k;-><init>(Lcom/android/b/b/i;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/b/b/q;

    invoke-direct {v2, v3}, Lcom/android/b/b/q;-><init>(Lcom/android/b/b/i;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/b/b/p;

    invoke-direct {v2, v3}, Lcom/android/b/b/p;-><init>(Lcom/android/b/b/i;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/b/b/o;

    invoke-direct {v2, v3}, Lcom/android/b/b/o;-><init>(Lcom/android/b/b/i;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/b/b/h;->aJo:[Lcom/android/b/b/n;

    return-void
.end method

.method public static dU(I)Lcom/android/b/b/n;
    .locals 3

    .prologue
    .line 71
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/b/b/h;->aJo:[Lcom/android/b/b/n;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 72
    sget-object v0, Lcom/android/b/b/h;->aJo:[Lcom/android/b/b/n;

    aget-object v0, v0, p0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/android/b/b/h;->aJl:Lcom/android/b/b/n;

    goto :goto_0
.end method
