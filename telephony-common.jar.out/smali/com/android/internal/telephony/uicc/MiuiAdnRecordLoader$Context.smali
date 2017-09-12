.class Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
.super Ljava/lang/Object;
.source "MiuiAdnRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context"
.end annotation


# static fields
.field private static final LOADER:Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

.field static final LOAD_ALL:I = 0x1

.field static final LOAD_SINGLE:I = 0x0

.field static final UPDATE_SINGLE:I = 0x2


# instance fields
.field adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

.field final efid:I

.field final extensionEfid:I

.field extentionRecordSize:I

.field final iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field loadedAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field final onLoaded:Landroid/os/Message;

.field final pin2:Ljava/lang/String;

.field recordIndex:I

.field result:Ljava/lang/Object;

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$1;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->LOADER:Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IIILandroid/os/Message;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "efid"    # I
    .param p3, "extensionEfid"    # I
    .param p4, "recordIndex"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 42
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    .line 43
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    .line 44
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->pin2:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IIILcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "efid"    # I
    .param p3, "extensionEfid"    # I
    .param p4, "recordIndex"    # I
    .param p5, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 63
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    .line 64
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    .line 65
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    .line 66
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->pin2:Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    .line 69
    iput p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    .line 70
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IILandroid/os/Message;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "efid"    # I
    .param p3, "extensionEfid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 53
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    .line 54
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    .line 55
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->pin2:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    .line 59
    return-void
.end method

.method static synthetic access$100()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->LOADER:Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    return-object v0
.end method
