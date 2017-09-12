.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
.super Ljava/lang/Object;
.source "MiuiAdnRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuildAdnResult"
.end annotation


# instance fields
.field public adnStr:[B

.field public result:I

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V
    .locals 0
    .param p2, "adnStr"    # [B
    .param p3, "result"    # I

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->this$0:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->adnStr:[B

    .line 240
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    .line 241
    return-void
.end method
