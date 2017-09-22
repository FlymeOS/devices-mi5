.class public Lorg/apache/thrift/meta_data/StructMetaData;
.super Lorg/apache/thrift/meta_data/FieldValueMetaData;
.source "StructMetaData.java"


# instance fields
.field public final structClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    .line 29
    iput-object p2, p0, Lorg/apache/thrift/meta_data/StructMetaData;->structClass:Ljava/lang/Class;

    .line 30
    return-void
.end method
