.class public final Lcom/android/b/b/N;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field private static aJd:Z


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final Rt:Lcom/android/b/b/U;

.field private aJJ:Landroid/bluetooth/BluetoothInputDevice;

.field private aJf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/b/b/N;->aJd:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/b/b/N;->Qu:Lcom/android/b/b/Q;

    .line 87
    iput-object p3, p0, Lcom/android/b/b/N;->RG:Lcom/android/b/b/J;

    .line 88
    iput-object p4, p0, Lcom/android/b/b/N;->Rt:Lcom/android/b/b/U;

    .line 89
    new-instance v0, Lcom/android/b/b/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/b/b/P;-><init>(Lcom/android/b/b/N;Lcom/android/b/b/O;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/b/b/Q;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/N;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/N;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/b/N;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/b/b/N;->aJf:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/b/b/N;->aJd:Z

    return v0
.end method

.method static synthetic b(Lcom/android/b/b/N;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/N;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method public static c(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 185
    sget v0, Lcom/android/b/d;->aGF:I

    :goto_0
    return v0

    .line 181
    :sswitch_0
    sget v0, Lcom/android/b/d;->aGI:I

    goto :goto_0

    .line 183
    :sswitch_1
    sget v0, Lcom/android/b/d;->aGH:I

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lcom/android/b/b/N;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/N;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/b/N;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/N;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    sget v0, Lcom/android/b/d;->aGI:I

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/b/b/N;->c(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 133
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-eqz p2, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/b/b/N;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_1

    .line 193
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "HidProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/N;->aJJ:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/android/b/e;->aHj:I

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/b/b/N;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 158
    packed-switch v0, :pswitch_data_0

    .line 166
    :pswitch_0
    invoke-static {v0}, Lcom/android/b/b/ai;->eb(I)I

    move-result v0

    :goto_0
    return v0

    .line 160
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGW:I

    goto :goto_0

    .line 163
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGV:I

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public nT()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public nU()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/b/b/N;->aJf:Z

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "HID"

    return-object v0
.end method
