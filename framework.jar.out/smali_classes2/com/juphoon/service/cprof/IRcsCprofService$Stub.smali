.class public abstract Lcom/juphoon/service/cprof/IRcsCprofService$Stub;
.super Landroid/os/Binder;
.source "IRcsCprofService.java"

# interfaces
.implements Lcom/juphoon/service/cprof/IRcsCprofService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/cprof/IRcsCprofService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.cprof.IRcsCprofService"

.field static final TRANSACTION_Mtc_CprofPccAddAddr:I = 0x2a

.field static final TRANSACTION_Mtc_CprofPccAddName:I = 0x18

.field static final TRANSACTION_Mtc_CprofPccAddrGetAddr:I = 0x2e

.field static final TRANSACTION_Mtc_CprofPccAddrGetLabel:I = 0x2c

.field static final TRANSACTION_Mtc_CprofPccAddrGetPref:I = 0x32

.field static final TRANSACTION_Mtc_CprofPccAddrGetType:I = 0x30

.field static final TRANSACTION_Mtc_CprofPccAddrSetAddr:I = 0x2f

.field static final TRANSACTION_Mtc_CprofPccAddrSetLabel:I = 0x2d

.field static final TRANSACTION_Mtc_CprofPccAddrSetPref:I = 0x33

.field static final TRANSACTION_Mtc_CprofPccAddrSetType:I = 0x31

.field static final TRANSACTION_Mtc_CprofPccBirthGetCalType:I = 0x54

.field static final TRANSACTION_Mtc_CprofPccBirthGetDate:I = 0x4e

.field static final TRANSACTION_Mtc_CprofPccBirthGetNonGregDate:I = 0x50

.field static final TRANSACTION_Mtc_CprofPccBirthGetPlace:I = 0x52

.field static final TRANSACTION_Mtc_CprofPccBirthSetCalType:I = 0x55

.field static final TRANSACTION_Mtc_CprofPccBirthSetDate:I = 0x4f

.field static final TRANSACTION_Mtc_CprofPccBirthSetNonGregDate:I = 0x51

.field static final TRANSACTION_Mtc_CprofPccBirthSetPlace:I = 0x53

.field static final TRANSACTION_Mtc_CprofPccCareerGetDuty:I = 0x58

.field static final TRANSACTION_Mtc_CprofPccCareerGetEmployer:I = 0x56

.field static final TRANSACTION_Mtc_CprofPccCareerSetDuty:I = 0x59

.field static final TRANSACTION_Mtc_CprofPccCareerSetEmployer:I = 0x57

.field static final TRANSACTION_Mtc_CprofPccCommAddrAddTel:I = 0x42

.field static final TRANSACTION_Mtc_CprofPccCommAddrAddUri:I = 0x36

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetTelId:I = 0x41

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetTelSize:I = 0x40

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetUriId:I = 0x35

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetUriSize:I = 0x34

.field static final TRANSACTION_Mtc_CprofPccCommAddrRmvTel:I = 0x43

.field static final TRANSACTION_Mtc_CprofPccCommAddrRmvUri:I = 0x37

.field static final TRANSACTION_Mtc_CprofPccGetAddrId:I = 0x29

.field static final TRANSACTION_Mtc_CprofPccGetAddrSize:I = 0x28

.field static final TRANSACTION_Mtc_CprofPccGetNameId:I = 0x17

.field static final TRANSACTION_Mtc_CprofPccGetNameSize:I = 0x16

.field static final TRANSACTION_Mtc_CprofPccGetPccType:I = 0x14

.field static final TRANSACTION_Mtc_CprofPccIconExportFile:I = 0x62

.field static final TRANSACTION_Mtc_CprofPccIconGetData:I = 0x60

.field static final TRANSACTION_Mtc_CprofPccIconGetDesc:I = 0x5e

.field static final TRANSACTION_Mtc_CprofPccIconGetEncodingType:I = 0x5c

.field static final TRANSACTION_Mtc_CprofPccIconGetMimeType:I = 0x5a

.field static final TRANSACTION_Mtc_CprofPccIconImportFile:I = 0x63

.field static final TRANSACTION_Mtc_CprofPccIconSetData:I = 0x61

.field static final TRANSACTION_Mtc_CprofPccIconSetDesc:I = 0x5f

.field static final TRANSACTION_Mtc_CprofPccIconSetEncodingType:I = 0x5d

.field static final TRANSACTION_Mtc_CprofPccIconSetMimeType:I = 0x5b

.field static final TRANSACTION_Mtc_CprofPccLoadAddr:I = 0x5

.field static final TRANSACTION_Mtc_CprofPccLoadAll:I = 0x1

.field static final TRANSACTION_Mtc_CprofPccLoadBirth:I = 0x9

.field static final TRANSACTION_Mtc_CprofPccLoadCareer:I = 0xb

.field static final TRANSACTION_Mtc_CprofPccLoadCommAddr:I = 0x7

.field static final TRANSACTION_Mtc_CprofPccLoadIcon:I = 0xd

.field static final TRANSACTION_Mtc_CprofPccLoadName:I = 0x3

.field static final TRANSACTION_Mtc_CprofPccNameGetDispName:I = 0x20

.field static final TRANSACTION_Mtc_CprofPccNameGetFamily:I = 0x1e

.field static final TRANSACTION_Mtc_CprofPccNameGetFirst:I = 0x22

.field static final TRANSACTION_Mtc_CprofPccNameGetGiven:I = 0x1a

.field static final TRANSACTION_Mtc_CprofPccNameGetMiddle:I = 0x1c

.field static final TRANSACTION_Mtc_CprofPccNameGetPref:I = 0x26

.field static final TRANSACTION_Mtc_CprofPccNameGetType:I = 0x24

.field static final TRANSACTION_Mtc_CprofPccNameSetDispName:I = 0x21

.field static final TRANSACTION_Mtc_CprofPccNameSetFamily:I = 0x1f

.field static final TRANSACTION_Mtc_CprofPccNameSetFirst:I = 0x23

.field static final TRANSACTION_Mtc_CprofPccNameSetGiven:I = 0x1b

.field static final TRANSACTION_Mtc_CprofPccNameSetMiddle:I = 0x1d

.field static final TRANSACTION_Mtc_CprofPccNameSetPref:I = 0x27

.field static final TRANSACTION_Mtc_CprofPccNameSetType:I = 0x25

.field static final TRANSACTION_Mtc_CprofPccRmvAddr:I = 0x2b

.field static final TRANSACTION_Mtc_CprofPccRmvName:I = 0x19

.field static final TRANSACTION_Mtc_CprofPccSetPccType:I = 0x15

.field static final TRANSACTION_Mtc_CprofPccTelGetLabel:I = 0x44

.field static final TRANSACTION_Mtc_CprofPccTelGetPref:I = 0x4c

.field static final TRANSACTION_Mtc_CprofPccTelGetTel:I = 0x46

.field static final TRANSACTION_Mtc_CprofPccTelGetTelType:I = 0x48

.field static final TRANSACTION_Mtc_CprofPccTelGetXuiType:I = 0x4a

.field static final TRANSACTION_Mtc_CprofPccTelSetLabel:I = 0x45

.field static final TRANSACTION_Mtc_CprofPccTelSetPref:I = 0x4d

.field static final TRANSACTION_Mtc_CprofPccTelSetTel:I = 0x47

.field static final TRANSACTION_Mtc_CprofPccTelSetTelType:I = 0x49

.field static final TRANSACTION_Mtc_CprofPccTelSetXuiType:I = 0x4b

.field static final TRANSACTION_Mtc_CprofPccUploadAddr:I = 0x6

.field static final TRANSACTION_Mtc_CprofPccUploadAll:I = 0x2

.field static final TRANSACTION_Mtc_CprofPccUploadBirth:I = 0xa

.field static final TRANSACTION_Mtc_CprofPccUploadCareer:I = 0xc

.field static final TRANSACTION_Mtc_CprofPccUploadCommAddr:I = 0x8

.field static final TRANSACTION_Mtc_CprofPccUploadIcon:I = 0xe

.field static final TRANSACTION_Mtc_CprofPccUploadName:I = 0x4

.field static final TRANSACTION_Mtc_CprofPccUriGetLabel:I = 0x38

.field static final TRANSACTION_Mtc_CprofPccUriGetPref:I = 0x3e

.field static final TRANSACTION_Mtc_CprofPccUriGetType:I = 0x3c

.field static final TRANSACTION_Mtc_CprofPccUriGetUri:I = 0x3a

.field static final TRANSACTION_Mtc_CprofPccUriSetLabel:I = 0x39

.field static final TRANSACTION_Mtc_CprofPccUriSetPref:I = 0x3f

.field static final TRANSACTION_Mtc_CprofPccUriSetType:I = 0x3d

.field static final TRANSACTION_Mtc_CprofPccUriSetUri:I = 0x3b

.field static final TRANSACTION_Mtc_CprofQrCardCttExportFile:I = 0x6a

.field static final TRANSACTION_Mtc_CprofQrCardCttGetData:I = 0x69

.field static final TRANSACTION_Mtc_CprofQrCardCttGetDesc:I = 0x68

.field static final TRANSACTION_Mtc_CprofQrCardCttGetEncodingType:I = 0x67

.field static final TRANSACTION_Mtc_CprofQrCardCttGetMimeType:I = 0x66

.field static final TRANSACTION_Mtc_CprofQrCardGetBusinessFlag:I = 0x64

.field static final TRANSACTION_Mtc_CprofQrCardLoadAll:I = 0xf

.field static final TRANSACTION_Mtc_CprofQrCardLoadFlag:I = 0x10

.field static final TRANSACTION_Mtc_CprofQrCardLoadPcc:I = 0x12

.field static final TRANSACTION_Mtc_CprofQrCardLoadPccIcon:I = 0x13

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetAddr:I = 0x7b

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetLabel:I = 0x7a

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetPref:I = 0x7d

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetType:I = 0x7c

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetCalType:I = 0x94

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetDate:I = 0x91

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetNonGregDate:I = 0x92

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetPlace:I = 0x93

.field static final TRANSACTION_Mtc_CprofQrCardPccCareerGetDuty:I = 0x96

.field static final TRANSACTION_Mtc_CprofQrCardPccCareerGetEmployer:I = 0x95

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetTelId:I = 0x8b

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetTelSize:I = 0x8a

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetUriId:I = 0x85

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetUriSize:I = 0x84

.field static final TRANSACTION_Mtc_CprofQrCardPccGetAddrId:I = 0x79

.field static final TRANSACTION_Mtc_CprofQrCardPccGetAddrSize:I = 0x78

.field static final TRANSACTION_Mtc_CprofQrCardPccGetMediaId:I = 0x7f

.field static final TRANSACTION_Mtc_CprofQrCardPccGetMediaSize:I = 0x7e

.field static final TRANSACTION_Mtc_CprofQrCardPccGetNameId:I = 0x70

.field static final TRANSACTION_Mtc_CprofQrCardPccGetNameSize:I = 0x6f

.field static final TRANSACTION_Mtc_CprofQrCardPccGetPccType:I = 0x6e

.field static final TRANSACTION_Mtc_CprofQrCardPccGetUrl:I = 0x6b

.field static final TRANSACTION_Mtc_CprofQrCardPccGetVcard:I = 0x6d

.field static final TRANSACTION_Mtc_CprofQrCardPccHasVcard:I = 0x6c

.field static final TRANSACTION_Mtc_CprofQrCardPccIconClrData:I = 0x9d

.field static final TRANSACTION_Mtc_CprofQrCardPccIconExportFile:I = 0x9e

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetData:I = 0x9b

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetDesc:I = 0x9a

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetEncodingType:I = 0x99

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetMimeType:I = 0x98

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetUri:I = 0x97

.field static final TRANSACTION_Mtc_CprofQrCardPccIconHasData:I = 0x9c

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetLabel:I = 0x80

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetMediaUrl:I = 0x81

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetPref:I = 0x83

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetType:I = 0x82

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetDispName:I = 0x74

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetFamily:I = 0x73

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetFirst:I = 0x75

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetGiven:I = 0x71

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetMiddle:I = 0x72

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetPref:I = 0x77

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetType:I = 0x76

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetLabel:I = 0x8c

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetPref:I = 0x90

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetTel:I = 0x8d

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetTelType:I = 0x8e

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetXuiType:I = 0x8f

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetLabel:I = 0x86

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetPref:I = 0x89

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetType:I = 0x88

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetUri:I = 0x87

.field static final TRANSACTION_Mtc_CprofQrCardSetBusinessFlag:I = 0x65

.field static final TRANSACTION_Mtc_CprofQrCardUploadFlag:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/cprof/IRcsCprofService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/cprof/IRcsCprofService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/juphoon/service/cprof/IRcsCprofService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadAll()I

    move-result v3

    .line 53
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v3    # "_result":I
    :sswitch_2
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadAll()I

    move-result v3

    .line 61
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v3    # "_result":I
    :sswitch_3
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadName()I

    move-result v3

    .line 69
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v3    # "_result":I
    :sswitch_4
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadName()I

    move-result v3

    .line 77
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v3    # "_result":I
    :sswitch_5
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadAddr()I

    move-result v3

    .line 85
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v3    # "_result":I
    :sswitch_6
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadAddr()I

    move-result v3

    .line 93
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v3    # "_result":I
    :sswitch_7
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadCommAddr()I

    move-result v3

    .line 101
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    .end local v3    # "_result":I
    :sswitch_8
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadCommAddr()I

    move-result v3

    .line 109
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v3    # "_result":I
    :sswitch_9
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadBirth()I

    move-result v3

    .line 117
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v3    # "_result":I
    :sswitch_a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadBirth()I

    move-result v3

    .line 125
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v3    # "_result":I
    :sswitch_b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadCareer()I

    move-result v3

    .line 133
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v3    # "_result":I
    :sswitch_c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadCareer()I

    move-result v3

    .line 141
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v3    # "_result":I
    :sswitch_d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadIcon(ILjava/lang/String;)I

    move-result v3

    .line 153
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadIcon()I

    move-result v3

    .line 161
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v3    # "_result":I
    :sswitch_f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadAll()I

    move-result v3

    .line 169
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v3    # "_result":I
    :sswitch_10
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadFlag()I

    move-result v3

    .line 177
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v3    # "_result":I
    :sswitch_11
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardUploadFlag()I

    move-result v3

    .line 185
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v3    # "_result":I
    :sswitch_12
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadPcc(Ljava/lang/String;)I

    move-result v3

    .line 195
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_13
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadPccIcon(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 209
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_14
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetPccType()I

    move-result v3

    .line 217
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v3    # "_result":I
    :sswitch_15
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccSetPccType(I)I

    move-result v3

    .line 227
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_16
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetNameSize()I

    move-result v3

    .line 235
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v3    # "_result":I
    :sswitch_17
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetNameId(I)I

    move-result v3

    .line 245
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_18
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddName()I

    move-result v3

    .line 253
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v3    # "_result":I
    :sswitch_19
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccRmvName(I)I

    move-result v3

    .line 263
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetGiven(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetGiven(ILjava/lang/String;)I

    move-result v3

    .line 285
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 291
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_1c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetMiddle(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetMiddle(ILjava/lang/String;)I

    move-result v3

    .line 307
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_1e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetFamily(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetFamily(ILjava/lang/String;)I

    move-result v3

    .line 329
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_20
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetDispName(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetDispName(ILjava/lang/String;)I

    move-result v3

    .line 351
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_22
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetFirst(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetFirst(ILjava/lang/String;)I

    move-result v3

    .line 373
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_24
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetType(I)I

    move-result v3

    .line 383
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 389
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_25
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 393
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetType(II)I

    move-result v3

    .line 395
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_26
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetPref(I)I

    move-result v3

    .line 405
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_27
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetPref(II)I

    move-result v3

    .line 417
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 423
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_28
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetAddrSize()I

    move-result v3

    .line 425
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v3    # "_result":I
    :sswitch_29
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 434
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetAddrId(I)I

    move-result v3

    .line 435
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddAddr()I

    move-result v3

    .line 443
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v3    # "_result":I
    :sswitch_2b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccRmvAddr(I)I

    move-result v3

    .line 453
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 459
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetLabel(ILjava/lang/String;)I

    move-result v3

    .line 475
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_2e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetAddr(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetAddr(ILjava/lang/String;)I

    move-result v3

    .line 497
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 503
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_30
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetType(I)I

    move-result v3

    .line 507
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 513
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_31
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetType(II)I

    move-result v3

    .line 519
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 525
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_32
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetPref(I)I

    move-result v3

    .line 529
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 535
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_33
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetPref(II)I

    move-result v3

    .line 541
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 547
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_34
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetUriSize()I

    move-result v3

    .line 549
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 555
    .end local v3    # "_result":I
    :sswitch_35
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetUriId(I)I

    move-result v3

    .line 559
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 565
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_36
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrAddUri()I

    move-result v3

    .line 567
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 573
    .end local v3    # "_result":I
    :sswitch_37
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrRmvUri(I)I

    move-result v3

    .line 577
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 583
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_38
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 597
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetLabel(ILjava/lang/String;)I

    move-result v3

    .line 599
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_3a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetUri(I)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 619
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetUri(ILjava/lang/String;)I

    move-result v3

    .line 621
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_3c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 630
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetType(I)I

    move-result v3

    .line 631
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 637
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetType(II)I

    move-result v3

    .line 643
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_3e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 652
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetPref(I)I

    move-result v3

    .line 653
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 659
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 664
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetPref(II)I

    move-result v3

    .line 665
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 671
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_40
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetTelSize()I

    move-result v3

    .line 673
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 679
    .end local v3    # "_result":I
    :sswitch_41
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 682
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetTelId(I)I

    move-result v3

    .line 683
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 689
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_42
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrAddTel()I

    move-result v3

    .line 691
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 697
    .end local v3    # "_result":I
    :sswitch_43
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 700
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrRmvTel(I)I

    move-result v3

    .line 701
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 707
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_44
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 721
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetLabel(ILjava/lang/String;)I

    move-result v3

    .line 723
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 729
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_46
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 732
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetTel(I)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 739
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 743
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 744
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetTel(ILjava/lang/String;)I

    move-result v3

    .line 745
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 751
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_48
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetTelType(I)I

    move-result v3

    .line 755
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 761
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_49
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 765
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 766
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetTelType(II)I

    move-result v3

    .line 767
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 773
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 776
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetXuiType(I)I

    move-result v3

    .line 777
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 783
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 787
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetXuiType(II)I

    move-result v3

    .line 789
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 795
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetPref(I)I

    move-result v3

    .line 799
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 805
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 809
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 810
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetPref(II)I

    move-result v3

    .line 811
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 817
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetDate()Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetDate(Ljava/lang/String;)I

    move-result v3

    .line 829
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 835
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_50
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetNonGregDate()Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 843
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetNonGregDate(Ljava/lang/String;)I

    move-result v3

    .line 847
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_52
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetPlace()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 861
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetPlace(Ljava/lang/String;)I

    move-result v3

    .line 865
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 871
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_54
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetCalType()I

    move-result v3

    .line 873
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 879
    .end local v3    # "_result":I
    :sswitch_55
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 882
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetCalType(I)I

    move-result v3

    .line 883
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 889
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_56
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerGetEmployer()Ljava/lang/String;

    move-result-object v3

    .line 891
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerSetEmployer(Ljava/lang/String;)I

    move-result v3

    .line 901
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 907
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_58
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerGetDuty()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 915
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerSetDuty(Ljava/lang/String;)I

    move-result v3

    .line 919
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 925
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_5a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetMimeType()I

    move-result v3

    .line 927
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 933
    .end local v3    # "_result":I
    :sswitch_5b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 936
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetMimeType(I)I

    move-result v3

    .line 937
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 943
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_5c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetEncodingType()I

    move-result v3

    .line 945
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 951
    .end local v3    # "_result":I
    :sswitch_5d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 954
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetEncodingType(I)I

    move-result v3

    .line 955
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 961
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_5e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetDesc()Ljava/lang/String;

    move-result-object v3

    .line 963
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetDesc(Ljava/lang/String;)I

    move-result v3

    .line 973
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 979
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_60
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetData()Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 990
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetData(Ljava/lang/String;)I

    move-result v3

    .line 991
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 997
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_62
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconExportFile(Ljava/lang/String;)I

    move-result v3

    .line 1001
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_63
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconImportFile(Ljava/lang/String;)I

    move-result v3

    .line 1011
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1017
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_64
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardGetBusinessFlag()Z

    move-result v3

    .line 1019
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1025
    .end local v3    # "_result":Z
    :sswitch_65
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 1028
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardSetBusinessFlag(Z)I

    move-result v3

    .line 1029
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":I
    :cond_1
    move v0, v4

    .line 1027
    goto :goto_1

    .line 1035
    :sswitch_66
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetMimeType()I

    move-result v3

    .line 1037
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1043
    .end local v3    # "_result":I
    :sswitch_67
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetEncodingType()I

    move-result v3

    .line 1045
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1051
    .end local v3    # "_result":I
    :sswitch_68
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetDesc()Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1059
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetData()Ljava/lang/String;

    move-result-object v3

    .line 1061
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttExportFile(Ljava/lang/String;)I

    move-result v3

    .line 1071
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1077
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6c
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccHasVcard(I)Z

    move-result v3

    .line 1091
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1097
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_6d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetVcard(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1110
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetPccType(I)I

    move-result v3

    .line 1111
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1117
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_6f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetNameSize(I)I

    move-result v3

    .line 1121
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1127
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_70
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1132
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetNameId(II)I

    move-result v3

    .line 1133
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_71
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetGiven(I)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetMiddle(I)Ljava/lang/String;

    move-result-object v3

    .line 1153
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1159
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_73
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1162
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetFamily(I)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1169
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1172
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetDispName(I)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1182
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetFirst(I)Ljava/lang/String;

    move-result-object v3

    .line 1183
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_76
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1192
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetType(I)I

    move-result v3

    .line 1193
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1199
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_77
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1202
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetPref(I)I

    move-result v3

    .line 1203
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1209
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_78
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1212
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetAddrSize(I)I

    move-result v3

    .line 1213
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1219
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_79
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1223
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1224
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetAddrId(II)I

    move-result v3

    .line 1225
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1231
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_7a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1234
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1241
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1244
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetAddr(I)Ljava/lang/String;

    move-result-object v3

    .line 1245
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1251
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1254
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetType(I)I

    move-result v3

    .line 1255
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1261
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1264
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetPref(I)I

    move-result v3

    .line 1265
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1271
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetMediaSize(I)I

    move-result v3

    .line 1275
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1281
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1285
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1286
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetMediaId(II)I

    move-result v3

    .line 1287
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_80
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1296
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 1297
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1303
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_81
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1306
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetMediaUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 1307
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1313
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1316
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetType(I)Ljava/lang/String;

    move-result-object v3

    .line 1317
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1323
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_83
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1326
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetPref(I)I

    move-result v3

    .line 1327
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1333
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_84
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1336
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetUriSize(I)I

    move-result v3

    .line 1337
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1343
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_85
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1347
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1348
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetUriId(II)I

    move-result v3

    .line 1349
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1355
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_86
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1358
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 1359
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1365
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_87
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1368
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetUri(I)Ljava/lang/String;

    move-result-object v3

    .line 1369
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_88
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1378
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetType(I)I

    move-result v3

    .line 1379
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1385
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_89
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1388
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetPref(I)I

    move-result v3

    .line 1389
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1395
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1398
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetTelSize(I)I

    move-result v3

    .line 1399
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1405
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1409
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1410
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetTelId(II)I

    move-result v3

    .line 1411
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_8c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1420
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 1421
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1427
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1430
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetTel(I)Ljava/lang/String;

    move-result-object v3

    .line 1431
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1437
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1440
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetTelType(I)I

    move-result v3

    .line 1441
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1447
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1450
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetXuiType(I)I

    move-result v3

    .line 1451
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1457
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_90
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1460
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetPref(I)I

    move-result v3

    .line 1461
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1467
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_91
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1470
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetDate(I)Ljava/lang/String;

    move-result-object v3

    .line 1471
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1477
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_92
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1480
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetNonGregDate(I)Ljava/lang/String;

    move-result-object v3

    .line 1481
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1487
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_93
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1490
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetPlace(I)Ljava/lang/String;

    move-result-object v3

    .line 1491
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1497
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_94
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1500
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetCalType(I)I

    move-result v3

    .line 1501
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1507
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_95
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1510
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCareerGetEmployer(I)Ljava/lang/String;

    move-result-object v3

    .line 1511
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1517
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_96
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1520
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCareerGetDuty(I)Ljava/lang/String;

    move-result-object v3

    .line 1521
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1527
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1530
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetUri(I)Ljava/lang/String;

    move-result-object v3

    .line 1531
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1537
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_98
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1540
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetMimeType(I)I

    move-result v3

    .line 1541
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1547
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_99
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1550
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetEncodingType(I)I

    move-result v3

    .line 1551
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1557
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_9a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1560
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetDesc(I)Ljava/lang/String;

    move-result-object v3

    .line 1561
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1570
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetData(I)Ljava/lang/String;

    move-result-object v3

    .line 1571
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1577
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9c
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1580
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconHasData(I)Z

    move-result v3

    .line 1581
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1587
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_9d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1590
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconClrData(I)I

    move-result v3

    .line 1591
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1597
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_9e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1601
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconExportFile(ILjava/lang/String;)I

    move-result v3

    .line 1603
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
