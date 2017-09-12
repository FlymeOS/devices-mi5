.class Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRcsImService.java"

# interfaces
.implements Lcom/juphoon/service/im/IRcsImService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/im/IRcsImService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput-object p1, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1695
    return-void
.end method


# virtual methods
.method public Mtc_GsGInfoLoadData(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "dwCookie"    # I
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5260
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5261
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5263
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5266
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5269
    return-object v2

    .line 5266
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoPushAcpt(Ljava/lang/String;)I
    .locals 6
    .param p1, "transId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3028
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3033
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3036
    return v2

    .line 3033
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoPushBoth(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcFreeText"    # Ljava/lang/String;
    .param p3, "dLatitude"    # D
    .param p5, "dLongitude"    # D
    .param p7, "fRadius"    # F
    .param p8, "pcUri"    # Ljava/lang/String;
    .param p9, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2909
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2912
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2916
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2917
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2918
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2919
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2920
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2921
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2922
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2925
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2928
    return-object v3

    .line 2925
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_GsGInfoPushBothP(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcFreeText"    # Ljava/lang/String;
    .param p3, "dLatitude"    # D
    .param p5, "dLongitude"    # D
    .param p7, "fRadius"    # F
    .param p8, "pcUri"    # Ljava/lang/String;
    .param p9, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2952
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2954
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2956
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2957
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2958
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2959
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2960
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2961
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2962
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2965
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2968
    return-object v3

    .line 2965
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_GsGInfoPushBothU(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcFreeText"    # Ljava/lang/String;
    .param p3, "dLatitude"    # D
    .param p5, "dLongitude"    # D
    .param p7, "fRadius"    # F
    .param p8, "sPartps"    # Ljava/lang/String;
    .param p9, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2989
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2992
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2996
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2997
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2998
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2999
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3000
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x22

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3001
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3002
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3005
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3008
    return-object v3

    .line 3005
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_GsGInfoPushCoord(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dLatitude"    # D
    .param p3, "dLongitude"    # D
    .param p5, "fRadius"    # F
    .param p6, "pcUri"    # Ljava/lang/String;
    .param p7, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2784
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2785
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2786
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2788
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2790
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2793
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    return-object v2

    .line 2793
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoPushCoordP(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dLatitude"    # D
    .param p3, "dLongitude"    # D
    .param p5, "fRadius"    # F
    .param p6, "pcUri"    # Ljava/lang/String;
    .param p7, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2840
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2841
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2842
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2844
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2849
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2852
    return-object v2

    .line 2849
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoPushCoordU(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dLatitude"    # D
    .param p3, "dLongitude"    # D
    .param p5, "fRadius"    # F
    .param p6, "sPartps"    # Ljava/lang/String;
    .param p7, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2876
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2877
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2878
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2880
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2882
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2885
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2888
    return-object v2

    .line 2885
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoPushCoordX(DDFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "dLatitude"    # D
    .param p3, "dLongitude"    # D
    .param p5, "fRadius"    # F
    .param p6, "pcSubject"    # Ljava/lang/String;
    .param p7, "pcSessIdentify"    # Ljava/lang/String;
    .param p8, "pcGrpChatId"    # Ljava/lang/String;
    .param p9, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3907
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3910
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3912
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3913
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3914
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3915
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3916
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3917
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3918
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3919
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3920
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3923
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3926
    return-object v3

    .line 3923
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_GsGInfoPushDeny(Ljava/lang/String;)I
    .locals 6
    .param p1, "transId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3056
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3061
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3064
    return v2

    .line 3061
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_GsGInfoSaveData(IILjava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "dwCookie"    # I
    .param p2, "dwGInfoType"    # I
    .param p3, "pcFreeText"    # Ljava/lang/String;
    .param p4, "dLatitude"    # D
    .param p6, "dLongitude"    # D
    .param p8, "fRadius"    # F
    .param p9, "pcUri"    # Ljava/lang/String;
    .param p10, "pcLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5229
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5232
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5233
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5234
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5235
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5236
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 5237
    invoke-virtual {v1, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 5238
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5239
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5240
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5241
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5242
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5243
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 5246
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    return-object v3

    .line 5246
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImConfMSubsConf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcSessIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5216
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5221
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5224
    return v2

    .line 5221
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImConfMSubsConfLst()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5187
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5192
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5195
    return v2

    .line 5192
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetAutAcceptGroupChat()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3942
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3947
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3950
    return v2

    .line 3947
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetCpimBase64EncodeEnable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5295
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5300
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5303
    return v2

    .line 5300
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetFtAutAccept()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4238
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4243
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4246
    return v2

    .line 4243
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetFtMaxRunVusers()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4287
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4292
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4295
    return v2

    .line 4292
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetFtThumb()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4264
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4269
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4272
    return v2

    .line 4269
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetFtWarnSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4336
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4341
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4344
    return v2

    .line 4341
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetImdnSendDeliReqEnable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3962
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3966
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3971
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3974
    return v2

    .line 3971
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetMaxAdhocGroupSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5086
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5087
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5088
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5091
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    return v2

    .line 5091
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetMaxSizeFileTr()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4311
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4316
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    return v2

    .line 4316
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImDbGetThumbBase64EncodeEnable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5312
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5317
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5320
    return v2

    .line 5317
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileAccept(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "trsfId"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4364
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4369
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4372
    return v2

    .line 4369
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileAcceptResume(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "pcTransId"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "iStartOffset"    # I
    .param p4, "iStopOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2635
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2641
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2644
    return v2

    .line 2641
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileFetchViaMsrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "pcTransId"    # Ljava/lang/String;
    .param p3, "pcFileName"    # Ljava/lang/String;
    .param p4, "pcFileType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2702
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2707
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2710
    return v2

    .line 2707
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileFetchViaMsrpX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcGrpChatId"    # Ljava/lang/String;
    .param p4, "pcTransId"    # Ljava/lang/String;
    .param p5, "pcFileName"    # Ljava/lang/String;
    .param p6, "pcFileType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3866
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3874
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3876
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3881
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3884
    return v2

    .line 3881
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileReject(Ljava/lang/String;)I
    .locals 6
    .param p1, "trsfId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4390
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4392
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4395
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4398
    return v2

    .line 4395
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileRelease(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "transId"    # Ljava/lang/String;
    .param p2, "send"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2730
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2736
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    return v2

    .line 2736
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileResume(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I
    .locals 7
    .param p1, "bSender"    # Z
    .param p2, "pcSubject"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "pcTransId"    # Ljava/lang/String;
    .param p5, "pcIMsgId"    # Ljava/lang/String;
    .param p6, "pcFileName"    # Ljava/lang/String;
    .param p7, "pcFileType"    # Ljava/lang/String;
    .param p8, "iDuration"    # I
    .param p9, "iStartOffset"    # I
    .param p10, "iStopOffset"    # I
    .param p11, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2503
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2506
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2518
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2519
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2520
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2523
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    return v3

    .line 2507
    .end local v3    # "_result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2523
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileResumeB(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7
    .param p1, "bSender"    # Z
    .param p2, "pcSubject"    # Ljava/lang/String;
    .param p3, "pcUri"    # Ljava/lang/String;
    .param p4, "pcTransId"    # Ljava/lang/String;
    .param p5, "pcIMsgId"    # Ljava/lang/String;
    .param p6, "pcFileName"    # Ljava/lang/String;
    .param p7, "pcFileType"    # Ljava/lang/String;
    .param p8, "iDuration"    # I
    .param p9, "iStartOffset"    # I
    .param p10, "iStopOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3824
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3827
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3828
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3829
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3833
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3836
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3837
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3838
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3839
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3840
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3843
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3846
    return v3

    .line 3828
    .end local v3    # "_result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3843
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileResumeP(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I
    .locals 7
    .param p1, "bSender"    # Z
    .param p2, "pcSubject"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "pcTransId"    # Ljava/lang/String;
    .param p5, "pcIMsgId"    # Ljava/lang/String;
    .param p6, "pcFileName"    # Ljava/lang/String;
    .param p7, "pcFileType"    # Ljava/lang/String;
    .param p8, "iDuration"    # I
    .param p9, "iStartOffset"    # I
    .param p10, "iStopOffset"    # I
    .param p11, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2587
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2590
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2591
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2599
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2600
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2602
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2603
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2604
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2607
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2610
    return v3

    .line 2591
    .end local v3    # "_result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2607
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileResumeS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcTransId"    # Ljava/lang/String;
    .param p4, "pcIMsgId"    # Ljava/lang/String;
    .param p5, "pcFileName"    # Ljava/lang/String;
    .param p6, "pcFileType"    # Ljava/lang/String;
    .param p7, "iDuration"    # I
    .param p8, "iStartOffset"    # I
    .param p9, "iStopOffset"    # I
    .param p10, "pcFromUri"    # Ljava/lang/String;
    .param p11, "pcToUri"    # Ljava/lang/String;
    .param p12, "zDate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3795
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3798
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3803
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3804
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3806
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3807
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3808
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3809
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3810
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3812
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3813
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3816
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3819
    return v3

    .line 3816
    .end local v3    # "_result":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileResumeU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I
    .locals 7
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "sPartps"    # Ljava/lang/String;
    .param p3, "pcTransId"    # Ljava/lang/String;
    .param p4, "pcIMsgId"    # Ljava/lang/String;
    .param p5, "pcFileName"    # Ljava/lang/String;
    .param p6, "pcFileType"    # Ljava/lang/String;
    .param p7, "iDuration"    # I
    .param p8, "iStartOffset"    # I
    .param p9, "iStopOffset"    # I
    .param p10, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3768
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3771
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3774
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3779
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3780
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3782
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3783
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3784
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3787
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3790
    return v3

    .line 3787
    .end local v3    # "_result":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileResumeX(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I
    .locals 7
    .param p1, "bSender"    # Z
    .param p2, "pcSubject"    # Ljava/lang/String;
    .param p3, "pcUri"    # Ljava/lang/String;
    .param p4, "pcGrpChatId"    # Ljava/lang/String;
    .param p5, "pcTransId"    # Ljava/lang/String;
    .param p6, "pcIMsgId"    # Ljava/lang/String;
    .param p7, "pcFileName"    # Ljava/lang/String;
    .param p8, "pcFileType"    # Ljava/lang/String;
    .param p9, "iDuration"    # I
    .param p10, "iStartOffset"    # I
    .param p11, "iStopOffset"    # I
    .param p12, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3739
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3742
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3743
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3744
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3745
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3746
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3748
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3749
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3751
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3752
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3753
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3754
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3755
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3756
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3757
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3760
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3763
    return v3

    .line 3743
    .end local v3    # "_result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3760
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImFileTrsf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "pcFileType"    # Ljava/lang/String;
    .param p4, "iDuration"    # I
    .param p5, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2258
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2263
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2266
    return-object v2

    .line 2263
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileTrsfB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "pcUri"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "pcFileType"    # Ljava/lang/String;
    .param p4, "iDuration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2362
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2364
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2367
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2370
    return-object v2

    .line 2367
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileTrsfP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 6
    .param p1, "pcUri"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "pcFileType"    # Ljava/lang/String;
    .param p4, "iDuration"    # I
    .param p5, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2396
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2398
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2401
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    return-object v2

    .line 2401
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileTrsfS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "pcUri"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "pcFileType"    # Ljava/lang/String;
    .param p4, "iDuration"    # I
    .param p5, "pcFromUri"    # Ljava/lang/String;
    .param p6, "pcToUri"    # Ljava/lang/String;
    .param p7, "zDate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2434
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2439
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2442
    return-object v2

    .line 2439
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileTrsfU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 6
    .param p1, "sPartps"    # Ljava/lang/String;
    .param p2, "pcFileName"    # Ljava/lang/String;
    .param p3, "pcFileType"    # Ljava/lang/String;
    .param p4, "iDuration"    # I
    .param p5, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2329
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2330
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2332
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2335
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    return-object v2

    .line 2335
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImFileTrsfX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 6
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcGrpChatId"    # Ljava/lang/String;
    .param p4, "pcFileName"    # Ljava/lang/String;
    .param p5, "pcFileType"    # Ljava/lang/String;
    .param p6, "iDuration"    # I
    .param p7, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2294
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2296
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2298
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2301
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2304
    return-object v2

    .line 2301
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImGenPartpLstId(Ljava/lang/String;)I
    .locals 6
    .param p1, "partpLst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5136
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5138
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5141
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5144
    return v2

    .line 5141
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2014
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2015
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2016
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2019
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    return-object v2

    .line 2019
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2039
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2043
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2048
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2051
    return-object v2

    .line 2048
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2170
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2172
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2175
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    return-object v2

    .line 2175
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendCU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2190
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2195
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    return-object v2

    .line 2195
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2071
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2072
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2077
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2080
    return-object v2

    .line 2077
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .param p4, "pcFromUri"    # Ljava/lang/String;
    .param p5, "pcToUri"    # Ljava/lang/String;
    .param p6, "zDate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2112
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2115
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2118
    return-object v2

    .line 2115
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4030
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4035
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4038
    return-object v2

    .line 4035
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2130
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2135
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    return-object v2

    .line 2135
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImLMsgSendVU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2150
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2155
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2158
    return-object v2

    .line 2155
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsBackupAppend(II)I
    .locals 6
    .param p1, "dwSessId"    # I
    .param p2, "dwObjId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4691
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4693
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4696
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4699
    return v2

    .line 4696
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsBackupBegin(ILjava/lang/String;)I
    .locals 6
    .param p1, "dwSessId"    # I
    .param p2, "pcDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4643
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4648
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4651
    return v2

    .line 4648
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsBackupEnd(I)I
    .locals 6
    .param p1, "dwSessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4666
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4671
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4674
    return v2

    .line 4671
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsCreate(Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4547
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4552
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4555
    return v2

    .line 4552
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsDelete(I)I
    .locals 6
    .param p1, "dwSessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4570
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4575
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    return v2

    .line 4575
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsGetCookie(I)Ljava/lang/String;
    .locals 6
    .param p1, "dwSessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4618
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4620
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4623
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4626
    return-object v2

    .line 4623
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsGetObjCount(I)I
    .locals 6
    .param p1, "dwSessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4762
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4767
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4770
    return v2

    .line 4767
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjAddChild(II)I
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "dwChildId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4858
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4859
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4860
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4863
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4866
    return v2

    .line 4863
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjAddData(II[B)I
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .param p3, "pData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4988
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4989
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4994
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    return v2

    .line 4994
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjAddInt(IIJ)I
    .locals 7
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .param p3, "qwValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4960
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4961
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4966
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4969
    return v2

    .line 4966
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjAddStr(IILjava/lang/String;)I
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .param p3, "pcValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4933
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4934
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4939
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4942
    return v2

    .line 4939
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjCreate(I)I
    .locals 6
    .param p1, "iType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4785
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4790
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4793
    return v2

    .line 4790
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjDelete(I)I
    .locals 6
    .param p1, "dwObjId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4833
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4838
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4841
    return v2

    .line 4838
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjEnumChild(II)I
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "iIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4907
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4912
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4915
    return v2

    .line 4912
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjGetChildCount(I)I
    .locals 6
    .param p1, "dwObjId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4881
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4886
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4889
    return v2

    .line 4886
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjGetData(II)[B
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5064
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5066
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5069
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5072
    return-object v2

    .line 5069
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjGetInt(II)J
    .locals 7
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5033
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5039
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5040
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5041
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 5044
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5047
    return-wide v2

    .line 5044
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public Mtc_ImMsObjGetStr(II)Ljava/lang/String;
    .locals 6
    .param p1, "dwObjId"    # I
    .param p2, "iType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5014
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5015
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5016
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5019
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5022
    return-object v2

    .line 5019
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsObjGetType(I)I
    .locals 6
    .param p1, "dwObjId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4810
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4815
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4818
    return v2

    .line 4815
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsRestoreBegin(ILjava/lang/String;)I
    .locals 6
    .param p1, "dwSessId"    # I
    .param p2, "pcDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4716
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4721
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4724
    return v2

    .line 4721
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsRestoreEnd(I)I
    .locals 6
    .param p1, "dwSessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4739
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4744
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4747
    return v2

    .line 4744
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImMsSetCookie(ILjava/lang/String;)I
    .locals 6
    .param p1, "dwSessId"    # I
    .param p2, "zCookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4595
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4600
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4603
    return v2

    .line 4600
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1763
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1764
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1768
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    return-object v2

    .line 1768
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1793
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1795
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1798
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    return-object v2

    .line 1798
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1946
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1953
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1955
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1958
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    return-object v2

    .line 1958
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendCU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1973
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1975
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1978
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    return-object v2

    .line 1978
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1818
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1825
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1830
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    return-object v2

    .line 1830
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .param p4, "pcFromUri"    # Ljava/lang/String;
    .param p5, "pcToUri"    # Ljava/lang/String;
    .param p6, "zDate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1866
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    return-object v2

    .line 1866
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3996
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3998
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4000
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4003
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4006
    return-object v2

    .line 4003
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1897
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1902
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    return-object v2

    .line 1902
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImPMsgSendVU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "zCookie"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .param p3, "pcMsgXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1933
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1938
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    return-object v2

    .line 1938
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImParsePartpLstId(I)Ljava/lang/String;
    .locals 6
    .param p1, "partpLstId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5161
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5163
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5166
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5169
    return-object v2

    .line 5166
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessAccept(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3355
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3357
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3360
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3363
    return v2

    .line 3360
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessAcceptPhone(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcPhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3380
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3385
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3388
    return v2

    .line 3385
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessAcptMdfyChairMan(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4471
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4472
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4476
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4479
    return v2

    .line 4476
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessAddPartp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcPhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3243
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3248
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3251
    return v2

    .line 3248
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessAddPartpU(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcPartpList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3277
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3279
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3282
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3285
    return v2

    .line 3282
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessCancel(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3461
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3466
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3469
    return v2

    .line 3466
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessDissolve(Ljava/lang/String;)I
    .locals 6
    .param p1, "grpChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4416
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4421
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4424
    return v2

    .line 4421
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessEplPartp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcPhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3312
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3317
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3320
    return v2

    .line 3317
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessEplPartpU(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcPhones"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3331
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3336
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    return v2

    .line 3336
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessEstabU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "pcPartpList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3143
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3145
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3148
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3151
    return-object v2

    .line 3148
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessGetMaxUsrCnt(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5111
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5116
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5119
    return v2

    .line 5116
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessIsExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3082
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3087
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    return v2

    .line 3087
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessLeave(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3486
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3488
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3491
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3494
    return v2

    .line 3491
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMdfyChairMan(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4445
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4450
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4453
    return v2

    .line 4450
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMdfyDispName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcDispName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4525
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4530
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4533
    return v2

    .line 4530
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMdfySubject(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "pcSubject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4105
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4107
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4110
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4113
    return v2

    .line 4110
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendGeoBoth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Z)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "zCookie"    # Ljava/lang/String;
    .param p3, "pcFreeText"    # Ljava/lang/String;
    .param p4, "dLatitude"    # D
    .param p6, "dLongitude"    # D
    .param p8, "fRadius"    # F
    .param p9, "pcLabel"    # Ljava/lang/String;
    .param p10, "bCpim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4206
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4208
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4209
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4210
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4211
    if-eqz p10, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4212
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4217
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4220
    return v2

    .line 4211
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4217
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendGeoCoord(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Z)I
    .locals 7
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "zCookie"    # Ljava/lang/String;
    .param p3, "dLatitude"    # D
    .param p5, "dLongitude"    # D
    .param p7, "fRadius"    # F
    .param p8, "pcLabel"    # Ljava/lang/String;
    .param p9, "bCpim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4155
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4156
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4157
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4158
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4159
    if-eqz p9, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4160
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4165
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4168
    return v2

    .line 4165
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcGroupChatId"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .param p4, "atListPhones"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3527
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3529
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3534
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3537
    return-object v2

    .line 3534
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendMC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcGroupChatId"    # Ljava/lang/String;
    .param p3, "pcXmlMsg"    # Ljava/lang/String;
    .param p4, "atListPhones"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3593
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3595
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3598
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3601
    return-object v2

    .line 3598
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendMPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPhone"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3639
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3644
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3647
    return-object v2

    .line 3644
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendMPhoneC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPhone"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3705
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3707
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3710
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3713
    return-object v2

    .line 3710
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendMPhoneV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcPhone"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3684
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3685
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3687
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3690
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3693
    return-object v2

    .line 3690
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessMsgSendMV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "pcGroupChatId"    # Ljava/lang/String;
    .param p3, "pcMsg"    # Ljava/lang/String;
    .param p4, "atListPhones"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3572
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3574
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3577
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3580
    return-object v2

    .line 3577
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessReJoinG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "pcGroupChatId"    # Ljava/lang/String;
    .param p4, "pcSessIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3179
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3184
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    return v2

    .line 3184
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessReStartG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcSubject"    # Ljava/lang/String;
    .param p2, "pcGroupChatId"    # Ljava/lang/String;
    .param p3, "pcPartpList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3208
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3213
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    return v2

    .line 3213
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessReject(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .param p2, "dwReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3408
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3410
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3413
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3416
    return v2

    .line 3413
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessRejectPhone(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pcPhone"    # Ljava/lang/String;
    .param p2, "dwReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3436
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3441
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3444
    return v2

    .line 3441
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImSessRjctMdfyChairMan(Ljava/lang/String;)I
    .locals 6
    .param p1, "pcGroupChatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4495
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4497
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4502
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4505
    return v2

    .line 4502
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImdnSendDisp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pcImdn"    # Ljava/lang/String;
    .param p2, "pcUri"    # Ljava/lang/String;
    .param p3, "pcDeviceId"    # Ljava/lang/String;
    .param p4, "convId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4065
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4066
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4068
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4071
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4074
    return v2

    .line 4071
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_ImmsGetProcessingSessId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5278
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5283
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5286
    return v2

    .line 5283
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public Mtc_PaSessEncodeMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5330
    iget-object v3, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5332
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5335
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5338
    return-object v2

    .line 5335
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1702
    const-string v0, "com.juphoon.service.im.IRcsImService"

    return-object v0
.end method

.method public isSession1To1()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    iget-object v4, p0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1721
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1724
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v2, v3

    .line 1718
    goto :goto_0

    .line 1721
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
